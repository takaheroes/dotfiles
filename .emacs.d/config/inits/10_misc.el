;;
;; その他の設定
;;

;; スタートページを表示しない
(setq inhibit-startup-message t)

;; デフォルトフォルダをHomeにする
(cd "~")

;; カーソルキーで新しい行を作らない
(setq next-line-add-newlines nil)

;; 自動保存リストファイルの保存先を変更する
(setq auto-save-list-file-prefix "~/.emacs.d/etc/auto-save-list/.saves-")

