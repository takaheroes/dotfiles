;;
;; dired-launchの設定
;;


;; mimeopenが使えない人はxdg-openで代用する
(setq dired-launch-mailcap-friend '("env" "xdg-open"))

;; これでdired-launch-modeが有効になり[J]が使える
(dired-launch-enable)

