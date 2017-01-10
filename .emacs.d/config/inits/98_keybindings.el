;;
;; キーバインドの設定
;;

;; C-hをbackspaceに割り当てる
(global-set-key "\C-h" 'backward-delete-char)

;; C-oをページの上移動に割り当てる
(global-set-key "\C-o" 'scroll-down)

;;
;; ace-jump-mode
;;
(global-set-key (kbd "C-l") 'ace-jump-word-mode)
;; ace-isearchでインクリメンタルサーチに組込まれているのでコメントアウト
;(global-set-key (kbd "C-o") 'ace-jump-char-mode)
;; あまり利用しないのでコメントアウト
;;(global-set-key (kbd "C-@") 'ace-jump-line-mode)

;; M-?をhelp-for-helpに割り当てる
(global-set-key "\M-?" 'help-for-help)

;; M-gをgoto-lineに割り当てる
(global-set-key "\M-g" 'goto-line)

;; C-:をibufferの起動に割り当てる
(global-set-key (kbd "C-:") 'ibuffer)

;; C-]をcua-modeの起動に割り当てる
(custom-set-variables
 '(cua-rectangle-mark-key ""))

;; C-x C-zで試行錯誤ファイルを開く
(global-set-key (kbd "C-x C-z") 'open-junk-file)

;;
;; DDSKK
;;
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key "\C-xj" 'skk-auto-fill-mode)
(global-set-key "\C-xt" 'skk-tutorial)

;;
;; popwin
;;
(global-set-key (kbd "C-z") popwin:keymap)

;;
;; helm
;;
(global-set-key (kbd "C-;") 'helm-for-files)
(define-key helm-map (kbd "C-h") 'delete-backward-char)


;;
;; 現在の日付や時間の挿入のキーバインド設定
;;
;; 現在の日付を入力する
(define-key global-map "\C-cd" `insert-current-date)
;; 現在の時刻を入力する
(define-key global-map "\C-ct" `insert-current-time)

;;
;; Org-mode
;;
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)
