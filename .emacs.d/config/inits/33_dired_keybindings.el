;;
;; dired$B%b!<%I$G$N%-!<%P%$%s%I$N@_Dj(B
;;

;; "RET"$B$G!"%P%C%U%!$r?75,:n@.$;$:$K%G%#%l%/%H%j$r3+$/(B
;(define-key dired-mode-map (kbd "RET") 'dired-open-in-accordance-with-situation)

;; "a"$B$G!"%P%C%U%!$r?75,:n@.$7$F%G%#%l%/%H%j$r3+$/(B
(define-key dired-mode-map (kbd "a") 'dired-find-file)

;; "r"$B$G!"(Bdired$BFb$N%U%!%$%kL>$rJT=8%b!<%I$K$9$k(B
(define-key dired-mode-map "r" 'wdired-change-to-wdired-mode)

;; "o"$B$G!"(Bdired-open$B$rMxMQ$7$F!"%U%!%$%k$r4XO"IU$1$i$l$?%"%W%j%1!<%7%g%s$G3+$/(B
;(define-key dired-mode-map (kbd "o") 'dired-open-xdg)
(define-key dired-mode-map "o" 'dired-open-xdg)

