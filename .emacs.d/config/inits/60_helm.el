;;;
;;; helmの設定
;;;

;; helmをロードする
(use-package helm
	     :ensure helm)

;; helm-configをロードする
(use-package helm-config)

;; helm-modeをロードする
(use-package helm-mode)

;; 既存のコマンドをhelmインターフェースに置き換える
(helm-mode 1)

