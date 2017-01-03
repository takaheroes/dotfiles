;;
;; migemoの設定
;;

;; migemoをロードする
(use-package migemo)

(setq migemo-options '("-q" "--emacs"))

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)

;; 辞書の文字コードを設定する
(setq migemo-coding-system 'utf-8-unix)

;; ライブラリーをロードする
(load-library "migemo")

;; 初期化する
(migemo-init)
