;;
;; dired-openの設定
;;

;; dired-openをロードする
(use-package dired-open)

;; ファイルごとに開くアプリケーションを指定する
(setq dired-open-extensions
      '(("xls" . "Microsoft Excel") ("xlsx" . "Microsoft Excel")
        ("ppt" . "libreoffice") ("pptx" . "libreoffice")
        ("doc" . "Microsoft Word") ("pptx" . "Microsoft Word")
        ("pdf" . "Preview")
        ))

