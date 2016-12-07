;;;
;;; org-mode$B$N@_Dj(B
;;;

;; org-mode$B$N=i4|2=(B
(require 'org-install)

; $B%-!<%P%$%s%I$N@_Dj(B
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)

; $B3HD%;R$,(Borg$B$N%U%!%$%k$r3+$$$?;~$O<+F0E*$K(BOrg-Mode$B$K@_Dj(B
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

; $BJ8>O$,(B1$B9T$K$*$5$^$i$J$$>l9g$K@^$jJV$9(B
(setq org-startup-truncated nil)

;; org-remember$B$N=i4|2=(B
;; (org-remember-insinuate)

; org-remember$B$N%a%b$r3JG<$9$k%U%!%$%k$N@_Dj(B
;(setq org-directory (format "%s%s" iclouddrive-data-dir "/MyNotes/"))
;(setq org-default-notes-file (expand-file-name "remember.org" org-directory))

; $B%"%8%'%s%@I=<(BP>]$N%U%!%$%k(B
;(setq org-agenda-files (list (expand-file-name (format "%s%s" iclouddrive-data-dir "/MyNotes/3.Business/Finance"))))
;(setq org-agenda-files-dir (format "%s%s" iclouddrive-data-dir "/MyNotes/"))

; org-remember$B$N%F%s%W%l!<%H$N@_Dj(B
(setq org-remember-templates
      '(("Note" ?n "** %?\n %i\n %a\n %T" nil "Inbox")
	("ToDo" ?t "** TODO %?\n %i\n %a\n %T" nil "Inbox")))

; 1$B3,AX>e$N8+=P$7$rF~NO$9$k4X?t$NDj5A(B
(defun org-insert-upheading (arg)
  "1$B%l%Y%k>e$N8+=P$7$rF~NO$9$k!#(B"
  (interactive "P")
  (org-insert-heading arg)
  (cond ((org-on-heading-p) (org-do-promote))
	((org-at-item-p) (org-indent-item -1))))

; 1$B3,AX>e!&2<$N8+=P$7$rF~NO$9$k4X?t$NDj5A(B
(defun org-insert-heading-dwim (arg)
  "$B8=:_$HF1$8%l%Y%k$N8+=P$7$rF~NO$9$k!#(B
C-u $B$r$D$1$k$H(B1$B%l%Y%k>e!"(BC-u C-u $B$r$D$1$k$H(B1$B%l%Y%k2<$N8+=P$7$rF~NO$9$k!#(B"
  (interactive "p")
  (case arg
    (4  (org-insert-subheading nil)) ; C-u
    (16 (org-insert-upheading nil))  ; C-u C-u
    (t  (org-insert-heading nil))))
;(define-key org-mode-map (kbd "<M-return>") 'org-insert-heading-dwim)


