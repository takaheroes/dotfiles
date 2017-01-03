;;
;; ace-jump-modeの設定
;;

;; ace-jump-modeをロードする
(use-package ace-jump-mode)

;; ヒント文字に使う文字を指定する
(setq ace-jump-mode-move-keys
      (append "asdfghjkl;:]qwertyuiop@zxcvbnm,." nil))

;; ace-jump-word-modeのとき文字を尋ねないようにする
(setq ace-jump-word-mode-use-query-char nil)
