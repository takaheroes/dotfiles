;;
;; cocoa emacs向け文字コードの設定
;;

;; ファイル名の文字コードをUTF-8に設定
(setq file-name-coding-system 'utf-8)

;; Diredで文字化けのために設定
(require 'ucs-normalize)
(set-file-name-coding-system 'utf-8-hfs)

