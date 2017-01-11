;;;
;;; DDSKKの設定
;;;


;; Emacs起動時にInput MethodをDDSKKにする
(setq default-input-method "japanese-skk")

;; DDSKK設定ファイルのフォルダを設定する
(setq skk-user-directory "~/.emacs.d/config/ddskk")

;; 辞書の文字コードをutf-8、改行コードをLFに設定
;(setq skk-jisyo-code 'utf-8-unix)  ; これを設定すると辞書変換できないのでコメントアウト

;; Emacs起動時にDDSKKをプリロードしDDSKK起動時の処理を速くする
(setq skk-preload t)
