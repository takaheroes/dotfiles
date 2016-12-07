;;
;; Window$B$N@_Dj(B
;;

;; $B%?%V!"A43Q%9%Z!<%9!"2~9TD>A0$NH>3Q%9%Z!<%9$NI=<($r@_Dj$9$k(B
(defface my-face-r-1 '((t (:background "gray15"))) nil)
(defface my-face-b-1 '((t (:background "gray"))) nil)
(defface my-face-b-2 '((t (:background "gray26"))) nil)
(defface my-face-u-1 '((t (:foreground "SteelBlue" :underline t))) nil)
(defvar my-face-r-1 'my-face-r-1)
(defvar my-face-b-1 'my-face-b-1)
(defvar my-face-b-2 'my-face-b-2)
(defvar my-face-u-1 'my-face-u-1)
(defadvice font-lock-mode (before my-font-lock-mode ())
 (font-lock-add-keywords
  major-mode
  '(("\t" 0 my-face-b-2 append)
    ("$B!!(B" 0 my-face-b-1 append)
    ("[ \t]+$" 0 my-face-u-1 append)
;;    ("[\r]*\n" 0 my-face-r-1 append)
    )))
(ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
(ad-activate 'font-lock-mode)

