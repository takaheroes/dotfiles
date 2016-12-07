;;
;; auto-insertの設定
;;

(auto-insert-mode)

;; テンプレートの保存先
(setq auto-insert-directory "~/.emacs.d/template")

;; orgファイル、txtファイルを作成時に template.txt を挿入する
(setq auto-insert-alist
      (nconc '(
	       ("\\.txt$" . "template.txt")
	       ("\\.org$" . "template.txt")
                ) auto-insert-alist))
(add-hook 'find-file-not-found-hooks 'auto-insert)

