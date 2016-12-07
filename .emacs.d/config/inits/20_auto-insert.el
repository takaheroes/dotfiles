;;
;; auto-insert$B$N@_Dj(B
;;

(auto-insert-mode)

;; $B%F%s%W%l!<%H$NJ]B8@h(B
(setq auto-insert-directory "~/.emacs.d/template")

;; org$B%U%!%$%k!"(Btxt$B%U%!%$%k$r:n@.;~$K(B template.txt $B$rA^F~$9$k(B
(setq auto-insert-alist
      (nconc '(
	       ("\\.txt$" . "template.txt")
	       ("\\.org$" . "template.txt")
                ) auto-insert-alist))
(add-hook 'find-file-not-found-hooks 'auto-insert)

