;;
;; dired-openの設定
;;

;; dired-openをロードする
;;(use-package dired-open)
(require 'dired-open)

;; ファイルごとに開くアプリケーションを指定する
(setq dired-open-extensions
      '(("xls" . "Microsoft Excel") ("xlsx" . "Microsoft Excel")
        ("ppt" . "Microsoft PowerPoint") ("pptx" . "Microsoft PowerPoint")
        ("doc" . "Microsoft Word") ("pptx" . "Microsoft Word")
        ("pdf" . "Preview")
        ))

