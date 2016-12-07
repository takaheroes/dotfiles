;;
;; キーバインドの設定
;;

;; C-hをbackspaceに割り当てる
(global-set-key "\C-h" 'backward-delete-char)

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

;; DDSKKのキーバインドを設定する
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key "\C-xj" 'skk-auto-fill-mode)
(global-set-key "\C-xt" 'skk-tutorial)

;;
;; popwinのキーバインド設定
;;
;;
(global-set-key (kbd "C-z") popwin:keymap)


;;
;; helmのキーバインド設定
;;
(global-set-key (kbd "C-;") 'helm-for-files)
(define-key helm-map (kbd "C-h") 'delete-backward-char)

