;;
;; dired$B$N@_Dj(B
;;

;; dired$B$N%m!<%I(B
(use-package dired)
(use-package dired-x)

;; $B%U%!%$%k$r:o=|$7$?$i%4%_H"$X(B
(setq delete-by-moving-to-trash t)


(setq dired-guess-shell-alist-user
      '(("\\.\\(ppt\\|PPT\\|pptx\\|PPTX\\)\\'" "open")))

;; dired-find-alternate-file $B$rM-8z2=$9$k(B
;; $B!J%P%C%U%!$r?75,$K:n@.$7$J$$$G%U%!%$%k$r3+$/!K(B
(put 'dired-find-alternate-file 'disabled nil)

;; $B%U%!%$%k$J$iJL%P%C%U%!$G!"%G%#%l%/%H%j$J$iF1$8%P%C%U%!$G3+$/4X?t$rDj5A$9$k(B
(defun dired-open-in-accordance-with-situation ()
  (interactive)
  (let ((file (dired-get-filename)))
    (if (file-directory-p file)
        (dired-find-alternate-file)
      (dired-find-file))))

;; $B%G%#%l%/%H%j$r@h$KI=<($9$k(B
(setq ls-lisp-dirs-first t)

;; $B%5%$%:!$3HD%;R$GJB$S49$((B
;;(load "sorter")

;; find-dired $B$r(B Cygwin $BL5$7$G;H$&(B
(autoload 'find-dired-lisp "find-dired-lisp" "findr" t nil)
(autoload 'find-grep-dired-lisp "find-dired-lisp" "findr" t nil)

;;; dired $B$r;H$C$F!"0l5$$K%U%!%$%k$N(B coding system ($B4A;z(B) $B$rJQ49$9$k(B
(require 'dired-aux)
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key (current-local-map) "T"
              'dired-do-convert-coding-system)))

(defvar dired-default-file-coding-system nil
  "*Default coding system for converting file (s).")

(defvar dired-file-coding-system 'no-conversion)

(defun dired-convert-coding-system ()
  (let ((file (dired-get-filename))
        (coding-system-for-write dired-file-coding-system)
        failure)
    (condition-case err
        (with-temp-buffer
          (insert-file file)
          (write-region (point-min) (point-max) file))
      (error (setq failure err)))
    (if (not failure)
        nil
      (dired-log "convert coding system error for %s:\n%s\n" file failure)
      (dired-make-relative file))))

(defun dired-do-convert-coding-system (coding-system &optional arg)
  "Convert file (s) in specified coding system."
  (interactive
   (list (let ((default (or dired-default-file-coding-system
                            buffer-file-coding-system)))
           (read-coding-system
            (format "Coding system for converting file (s) (default, %s): "
                    default)
            default))
         current-prefix-arg))
  (check-coding-system coding-system)
  (setq dired-file-coding-system coding-system)
  (dired-map-over-marks-check
   (function dired-convert-coding-system) arg 'convert-coding-system t))

;; dired$B$r(B2$B$D$N%&%#%s%I%&$G3+$$$F$$$k;~$K!"%G%U%)%k%H$N0\F0(B or
;; $B%3%T!<@h$r$b$&0lJ}$N(Bdired$B$G3+$$$F$$$k%G%#%l%/%H%j$K$9$k(B
(setq dired-dwim-target t)

