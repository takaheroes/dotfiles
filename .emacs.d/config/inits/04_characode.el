;;
;; 文字コードの設定
;;

;; 文字コードは「UTF-8」、改行コードは「CR+LF」（Windows）に設定する
(setq default-coding-system 'utf-8-dos)

;; ファイルを開く際の文字コード判定でUTF-8の優先度を上げる
(prefer-coding-system 'utf-8-dos)

;; ファイル新規作成時の文字コードをUTF-8に設定する
(setq default-buffer-file-coding-system 'utf-8-dos)

;; ファイル名の文字コードをUTF-8に設定する
(setq default-file-name-coding-system 'utf-8-dos)

