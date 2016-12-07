;;;
;;; org-modeの設定
;;;

;; org-modeの初期化
(require 'org-install)

; キーバインドの設定
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)

; 拡張子がorgのファイルを開いた時は自動的にOrg-Modeに設定
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

; 文章が1行におさまらない場合に折り返す
(setq org-startup-truncated nil)

;; org-rememberの初期化
;; (org-remember-insinuate)

; org-rememberのメモを格納するファイルの設定
;(setq org-directory (format "%s%s" iclouddrive-data-dir "/MyNotes/"))
;(setq org-default-notes-file (expand-file-name "remember.org" org-directory))

; アジェンダ表示対象のファイル
;(setq org-agenda-files (list (expand-file-name (format "%s%s" iclouddrive-data-dir "/MyNotes/3.Business/Finance"))))
;(setq org-agenda-files-dir (format "%s%s" iclouddrive-data-dir "/MyNotes/"))

; org-rememberのテンプレートの設定
(setq org-remember-templates
      '(("Note" ?n "** %?\n %i\n %a\n %T" nil "Inbox")
	("ToDo" ?t "** TODO %?\n %i\n %a\n %T" nil "Inbox")))

; 1階層上の見出しを入力する関数の定義
(defun org-insert-upheading (arg)
  "1レベル上の見出しを入力する。"
  (interactive "P")
  (org-insert-heading arg)
  (cond ((org-on-heading-p) (org-do-promote))
	((org-at-item-p) (org-indent-item -1))))

; 1階層上・下の見出しを入力する関数の定義
(defun org-insert-heading-dwim (arg)
  "現在と同じレベルの見出しを入力する。
C-u をつけると1レベル上、C-u C-u をつけると1レベル下の見出しを入力する。"
  (interactive "p")
  (case arg
    (4  (org-insert-subheading nil)) ; C-u
    (16 (org-insert-upheading nil))  ; C-u C-u
    (t  (org-insert-heading nil))))
;(define-key org-mode-map (kbd "<M-return>") 'org-insert-heading-dwim)


