;;;
;;; DDSKKの設定
;;;

;; 辞書ファイルのパスを設定する
(setq skk-large-jisyo "~/.emacs.d/etc/ddskk/dic/SKK-JISYO.L")

;; Emacs起動時にInput MethodをDDSKKにする
(setq default-input-method "japanese-skk")

;; DDSKK設定ファイルのフォルダを設定する
(setq skk-user-directory "~/.emacs.d/config/ddskk")

;; 辞書の文字コードをutf-8、改行コードをLFに設定
;(setq skk-jisyo-code 'utf-8-unix)  ; これを設定すると辞書変換できないのでコメントアウト

;; 変換のときEnterを押しても確定のみで改行しない
(setq skk-egg-like-newline t)

;; "「"入力したら"」"も自動挿入
(setq skk-auto-insert-paren t)

;; 送り仮名が厳密に正しい候補を優先して表示
(setq skk-henkan-strict-okuri-precedence t)

;; 漢字登録時、送り仮名が厳密に正しいかをチェック
(setq skk-check-okurigana-on-touroku t)

;; Emacs起動時にDDSKKをプリロードしDDSKK起動時の処理を速くする
(setq skk-preload t)

