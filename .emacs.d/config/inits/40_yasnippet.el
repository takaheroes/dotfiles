;;
;; yasnippetの設定
;;

(use-package yasnippet
	:ensure yasnippet)

;; スニペットの格納先のパスを設定する
(setq yas-snippet-dirs "~/.emacs.d/snippets")

(yas-global-mode 1)
