;;
;; diredモードでのキーバインドの設定
;;

;; "RET"で、バッファを新規作成せずにディレクトリを開く
;(define-key dired-mode-map (kbd "RET") 'dired-open-in-accordance-with-situation)

;; "a"で、バッファを新規作成してディレクトリを開く
(define-key dired-mode-map (kbd "a") 'dired-find-file)

;; "r"で、dired内のファイル名を編集モードにする
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;; "o"で、dired-openを利用して、ファイルを関連付けられたアプリケーションで開く
;(define-key dired-mode-map (kbd "o") 'dired-open-xdg)
(define-key dired-mode-map "o" 'dired-open-xdg)

