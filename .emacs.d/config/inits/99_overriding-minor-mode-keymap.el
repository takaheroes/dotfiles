;;
;; $B%-!<%P%s%I$N@_Dj(B
;;

;; $B%-!<%^%C%WJQ99$O2<$N%3%a%s%H$rI>2A$7$F$+$i(B define-minor-mode $B$r:FI>2A(B
(define-minor-mode overriding-minor-mode
  "$BA4$F$N%^%$%J!<%b!<%I%^%C%W$rL5;k$7$F%-!<$r3d$jEv$F$k(B"
  t          ; $B%G%U%)%k%H$GM-8z(B
  nil        ; $B%b!<%I%i%$%s(B
  `((, (kbd "C-t") . other-window-or-split)))

