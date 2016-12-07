;;
;; Modelineの設定
;;

;; 日付と時間を表示する
(setq display-time-string-forms
 '(year "/" month "/" day " " dayname " " 24-hours ":" minutes))
(display-time)

;; カーソルの位置を表示する
(setq line-number-mode t)    ; モードラインにカーソルがある行を表示
(setq column-number-mode t)  ; モードラインにカーソルがある位置の文字数を表示

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

