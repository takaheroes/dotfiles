;;
;; emacsclientの設定
;;

;; サーバー機能をロードする
(require 'server)

;; 既にサーバーが起動しているかを確認し、起動していない場合に起動する
(unless (server-running-p)
  (server-start))
