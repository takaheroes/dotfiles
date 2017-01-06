;;
;; popwinの設定
;;

;; popwinをロードする
(use-package popwin)

(popwin-mode 1)

;(setq helm-samewindow nil)
;(setq popwin:adjust-other-windows t)

;; ポップアップの大きさを設定する
(setq popwin:popup-window-height 0.5)

;; helm
(push '("helm" :position bottom :regexp t :height 0.6) popwin:special-display-config)
(push '("Helm" :position bottom :regexp t :height 0.6) popwin:special-display-config)

;; my-template-select
(push '("*select template*" :position bottom :height 0.2) popwin:special-display-config)

;; Deletions
(push '("*Deletions*" :position bottom :height 0.2) popwin:special-display-config)

;; Calendar
(push '("*Calendar*" :position bottom :height 0.4) popwin:special-display-config)

;; Org-modeの org-todo
;;(push '("*Org todo*" :position bottom :regexp t :height 0.4) popwin:special-display-config)

;; M-x dired-jump-other-window
;(push '(dired-mode :position top) popwin:special-display-config)


