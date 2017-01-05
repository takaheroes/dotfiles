;;
;; キーバンドの設定
;;

;; キーマップ変更は下のコメントを評価してから define-minor-mode を再評価
(define-minor-mode overriding-minor-mode
  "全てのマイナーモードマップを無視してキーを割り当てる"
  t          ; デフォルトで有効
  nil        ; モードライン
  `((, (kbd "C-t") . other-window-or-split)))

