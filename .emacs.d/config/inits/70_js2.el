;;;
;;; js2-mode$B$N@_Dj(B
;;;

;; js2-mode$B$r%m!<%I$9$k(B
;; $B%$%s%9%H!<%k$5$l$F$$$J$$>l9g$O%$%s%9%H!<%k$9$k(B
(use-package js2-mode
  :ensure js2-mode)

;; $B3HD%;R$,(Bjs$B$N>l9g$O(Bjs2-mode$B$K$9$k(B
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
