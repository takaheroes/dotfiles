;;
;; Frame$B$N@_Dj(B
;;

;; Frame$B$N%5%$%:$r@_Dj$9$k!J(BMacbook Air 13.3$B%$%s%A8~$1!K(B
(setq default-frame-alist
      (append (list
	       '(top . 26)
	       '(left . 0)
	       '(width . 124)
	       '(height . 38) ;; Macbook Air$B$@$H$3$3$,(B60$B$@$H2hLL$,JQ$K$J$k(B
	       '(cursor-type . box)
	       )
	      default-frame-alist))

;; $B%9%/%m!<%k%P!<$r1&B&$KI=<($9$k(B
(set-scroll-bar-mode 'right)

;; $B%?%$%H%k%P!<$K%P%C%U%!L>$H%U%!%$%k%Q%9L>$rI=<($9$k(B
(setq frame-title-format '("%b" "(%f)"))

;; $B%D!<%k%P!<$rHsI=<($K$9$k(B
(tool-bar-mode 0)

;; Frame$B$,(B1$B%&%#%s%I%&$N>l9g$O=D$KJ,3d$9$k(B
;; $B4{$KJ,3d$5$l$F$$$k>l9g$OB>%&%#%s%I%&$K%+!<%=%k$r0\F0$9$k4X?t$rDj5A$9$k(B
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

