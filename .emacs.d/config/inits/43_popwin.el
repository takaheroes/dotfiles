;;
;; popwin$B$N@_Dj(B
;;

;; popwin$B$r%m!<%I$9$k(B
(use-package popwin)

(popwin-mode 1)

;(setq helm-samewindow nil)
;(setq popwin:adjust-other-windows t)

;; $B%]%C%W%"%C%W$NBg$-$5$r@_Dj$9$k(B
(setq popwin:popup-window-height 0.5)

;; helm
(push '("helm" :position bottom :regexp t :height 0.6) popwin:special-display-config)
(push '("Helm" :position bottom :regexp t :height 0.6) popwin:special-display-config)

;; my-template-select
(push '("*select template*" :position bottom :height 0.2) popwin:special-display-config)

;; Deletions
(push '("*Deletions*" :position bottom :height 0.2) popwin:special-display-config)

;; M-x dired-jump-other-window
;(push '(dired-mode :position top) popwin:special-display-config)


