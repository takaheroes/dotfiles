;;;
;;; js2-modeの設定
;;;

;; js2-modeをロードする
;; インストールされていない場合はインストールする
(use-package js2-mode
  :ensure js2-mode)

;; 拡張子がjsの場合はjs2-modeにする
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
