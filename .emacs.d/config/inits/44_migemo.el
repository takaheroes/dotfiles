;;
;; migemo$B$N@_Dj(B
;;

;; migemo$B$r%m!<%I$9$k(B
(use-package migemo)

(setq migemo-options '("-q" "--emacs"))

(setq migemo-user-dictionary nil)
(setq migemo-regex-dictionary nil)

;; $B<-=q$NJ8;z%3!<%I$r@_Dj$9$k(B
(setq migemo-coding-system 'utf-8-unix)

;; $B%i%$%V%i%j!<$r%m!<%I$9$k(B
(load-library "migemo")

;; $B=i4|2=$9$k(B
(migemo-init)
