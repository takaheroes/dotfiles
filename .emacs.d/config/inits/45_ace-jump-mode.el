;;
;; ace-jump-mode$B$N@_Dj(B
;;

;; ace-jump-mode$B$r%m!<%I$9$k(B
(use-package ace-jump-mode)

;; $B%R%s%HJ8;z$K;H$&J8;z$r;XDj$9$k(B
(setq ace-jump-mode-move-keys
      (append "asdfghjkl;:]qwertyuiop@zxcvbnm,." nil))

;; ace-jump-word-mode$B$N$H$-J8;z$r?R$M$J$$$h$&$K$9$k(B
(setq ace-jump-word-mode-use-query-char nil)
