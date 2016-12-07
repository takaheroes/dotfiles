;;
;; auto-installの設定
;;

;; auto-installをロードする
(require 'auto-install)

;; auto-installのインストール先のディレクトリを設定
(setq auto-install-directory "~/.emacs.d/elisp/auto-install")

;; 起動時にEmacsWikiのページ名を補完候補に追加
;(auto-install-update-emacswiki-package-name t)

;; install-elisp.el互換モードにする
(auto-install-compatibility-setup)

