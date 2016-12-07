;;
;; markdown-modeの設定
;;

;; markdown-modeをロードする
(use-package markdown-mode)

;; 拡張子がmdのファイルはmarkdown-modeで開く
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

