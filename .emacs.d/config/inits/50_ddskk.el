;;;
;;; DDSKK$B$N@_Dj(B
;;;

;; $B<-=q%U%!%$%k$N%Q%9$r@_Dj$9$k(B
(setq skk-large-jisyo "~/.emacs.d/etc/ddskk/dic/SKK-JISYO.L")

;; Emacs$B5/F0;~$K(BInput Method$B$r(BDDSKK$B$K$9$k(B
(setq default-input-method "japanese-skk")

;; DDSKK$B@_Dj%U%!%$%k$N%U%)%k%@$r@_Dj$9$k(B
(setq skk-user-directory "~/.emacs.d/config/ddskk")

;; $B<-=q$NJ8;z%3!<%I$r(Butf-8$B!"2~9T%3!<%I$r(BLF$B$K@_Dj(B
;(setq skk-jisyo-code 'utf-8-unix)  ; $B$3$l$r@_Dj$9$k$H<-=qJQ49$G$-$J$$$N$G%3%a%s%H%"%&%H(B

;; $BJQ49$N$H$-(BEnter$B$r2!$7$F$b3NDj$N$_$G2~9T$7$J$$(B
(setq skk-egg-like-newline t)

;; "$B!V(B"$BF~NO$7$?$i(B"$B!W(B"$B$b<+F0A^F~(B
(setq skk-auto-insert-paren t)

;; $BAw$j2>L>$,87L)$K@5$7$$8uJd$rM%@h$7$FI=<((B
(setq skk-henkan-strict-okuri-precedence t)

;; $B4A;zEPO?;~!"Aw$j2>L>$,87L)$K@5$7$$$+$r%A%'%C%/(B
(setq skk-check-okurigana-on-touroku t)

;; Emacs$B5/F0;~$K(BDDSKK$B$r%W%j%m!<%I$7(BDDSKK$B5/F0;~$N=hM}$rB.$/$9$k(B
(setq skk-preload t)

