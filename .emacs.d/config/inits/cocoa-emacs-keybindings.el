;;
;; Cocoa Emacs向けキーバインドの設定
;;

;; M-¥でバックスラッシュを入力する
(define-key global-map [?\M-¥] "\\")

;; ¥でバックスラッシュを入力する
;(define-key global-map [?¥] [?\\])

;; C-c wでカーソル下の単語に対して辞書アプリで辞書を引く
(define-key global-map (kbd "C-c w") 'dictionary)

;; システムへ修飾キーを渡さない
(setq mac-pass-control-to-system nil)
(setq mac-pass-command-to-system nil)
(setq mac-pass-option-to-system nil)
