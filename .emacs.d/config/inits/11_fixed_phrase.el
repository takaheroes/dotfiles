;;
;; fixed phraseの設定
;;

(defvar my-template-text-file "~/.emacs.d/template/fixed_phrase.txt")
(defvar my-template-buffer nil)
(defvar my-template-point nil)

(defun my-template-insert ()
  (interactive)
  (let (content)
    (when (setq
           content
           (get-text-property (point) :content))
      (save-excursion
        (set-buffer my-template-buffer)
        (save-excursion
          (goto-char my-template-point)
          (insert content))))))

(defun my-template-select ()
  (interactive)
  (let ((buffer
         (get-buffer-create "*select template*"))
        templates begin template-map text)
    (setq my-template-buffer (current-buffer)
          my-template-point  (point))
    (unless (file-readable-p my-template-text-file)
      (error "Couldn't read template file: %s"))
    (with-temp-buffer
      (insert-file-contents my-template-text-file)
      (goto-char (point-min))
      (while (re-search-forward "^\\*\\(.*\\)$" nil t)
        (when begin
          (setq templates
                (cons
                 (cons
                  (car templates)
                  (buffer-substring
                   begin (1- (match-beginning 0))))
                 (cdr templates))))
        (setq templates (cons (match-string 1) templates))
        (setq begin (1+ (match-end 0))))
      (when begin
        (setq templates
              (cons
               (cons
                (car templates)
                (buffer-substring begin (point-max)))
               (cdr templates)))))
    (pop-to-buffer buffer)
    (setq buffer-read-only nil
          major-mode       'template-select-mode
          mode-name        "Select Template"
          template-map     (make-keymap))
    (suppress-keymap template-map)
    (define-key template-map " "    'my-template-insert)
    (define-key template-map "\C-m" 'my-template-insert)
    (define-key template-map "n"    'next-line)
    (define-key template-map "p"    'previous-line)
    (define-key template-map "q"    'kill-buffer-and-window)
    (use-local-map template-map)
    (buffer-disable-undo)
    (delete-region (point-min) (point-max))
    (dolist (tt templates)
      (setq text (concat (car tt) "\n"))
      (put-text-property
       0 (length text) :content (cdr tt) text)
      (insert text)
      (goto-char (point-min)))
    (delete-region (1- (point-max)) (point-max))
    (setq buffer-read-only t)
    (set-buffer-modified-p nil)))

