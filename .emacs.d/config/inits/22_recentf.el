;;
;; recentfの設定
;;

;; recentfをロードする
(use-package recentf)

;; 履歴の保存数を2000に設定する
(setq recentf-max-saved-items 2000)

;; 履歴ファイルの保存場所を設定する
(custom-set-variables '(recentf-save-file "~/.emacs.d/etc/recentf/recentf"))

;; recentf-extをロードする
(use-package recentf-ext)

