;;
;; open-junk-fileの設定
;;

;; open-junk-fileをロードする
(use-package open-junk-file
	:ensure open-junk-file)

;; junkファイルのデフォルトパスの設定
(setq open-junk-file-format "~/.emacs.d/etc/junk/%Y/%m/%d-%H%M%S.")

