;;
;; Cocoa Emacs向け辞書アプリ連携の設定
;;

;; Macで辞書アプリと連携する
(defun dictionary ()
  "dictionary.app"
  (interactive)
  (let ((editable (not buffer-read-only))
        (pt (save-excursion (mouse-set-point last-nonmenu-event)))
        beg end)

    (if (and mark-active
             (<= (region-beginning) pt) (<= pt (region-end)) )
        (setq beg (region-beginning)
              end (region-end))
      (save-excursion
        (goto-char pt)
        (setq end (progn (forward-word) (point)))
        (setq beg (progn (backward-word) (point)))
        ))

    (start-process "dictionary.app" "*dictionary-region*"
                   "open"
                   (concat "dict:///"
                           (url-hexify-string (buffer-substring-no-properties beg end))))))
