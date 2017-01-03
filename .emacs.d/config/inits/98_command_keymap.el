;;
;; $B%-!<%P%$%s%I$N@_Dj(B
;;

;; C-h$B$r(Bbackspace$B$K3d$jEv$F$k(B
(global-set-key "\C-h" 'backward-delete-char)

;; C-o$B$r%Z!<%8$N>e0\F0$K3d$jEv$F$k(B
(global-set-key "\C-o" 'scroll-down)

;;
;; ace-jum-mode$B$N@_Dj(B
;;
(global-set-key (kbd "C-l") 'ace-jump-word-mode)
;; ace-isearch$B$G%$%s%/%j%a%s%?%k%5!<%A$KAH9~$^$l$F$$$k$N$G%3%a%s%H%"%&%H(B
;(global-set-key (kbd "C-o") 'ace-jump-char-mode)
;; $B$"$^$jMxMQ$7$J$$$N$G%3%a%s%H%"%&%H(B
;;(global-set-key (kbd "C-@") 'ace-jump-line-mode)

;; M-?$B$r(Bhelp-for-help$B$K3d$jEv$F$k(B
(global-set-key "\M-?" 'help-for-help)

;; M-g$B$r(Bgoto-line$B$K3d$jEv$F$k(B
(global-set-key "\M-g" 'goto-line)

;; C-:$B$r(Bibuffer$B$N5/F0$K3d$jEv$F$k(B
(global-set-key (kbd "C-:") 'ibuffer)

;; C-]$B$r(Bcua-mode$B$N5/F0$K3d$jEv$F$k(B
(custom-set-variables
 '(cua-rectangle-mark-key ""))

;; C-x C-z$B$G;n9T:x8m%U%!%$%k$r3+$/(B
(global-set-key (kbd "C-x C-z") 'open-junk-file)

;; DDSKK$B$N%-!<%P%$%s%I$r@_Dj$9$k(B
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key "\C-xj" 'skk-auto-fill-mode)
(global-set-key "\C-xt" 'skk-tutorial)

;;
;; popwin$B$N%-!<%P%$%s%I@_Dj(B
;;
(global-set-key (kbd "C-z") popwin:keymap)


;;
;; helm$B$N%-!<%P%$%s%I@_Dj(B
;;
(global-set-key (kbd "C-;") 'helm-for-files)
(define-key helm-map (kbd "C-h") 'delete-backward-char)

