;;
;; $B99?7F|;~<+F05-O?$N@_Dj(B
;;

;; time-stamp$B$N%m!<%I(B
(use-package time-stamp)

(defun time-stamp-yyyymmdd ()
  (format-time-string "%Y/%02m/%02d"))

(defun time-stamp-hh-colon-mm ()
  "Return Hour Colon Minute"
  (format-time-string "%H:%M"))

(defun time-stamp-english-a ()
  "Return a day of the week"
  (let ((aw (string-to-number (format-time-string "%w" (current-time)))))
    (cond
     ((= aw 0)
      "(Sun)")
     ((= aw 1)
      "(Mon)")
     ((= aw 2)
      "(Tue)")
     ((= aw 3)
      "(Wed)")
     ((= aw 4)
      "(Thu)")
     ((= aw 5)
      "(Fri)")
     ((= aw 6)
      "(Sat)"))))

;; $B%?%$%`%9%?%s%W$r5-O?$9$k%(%j%"$r@_Dj$9$k(B
(setq time-stamp-start "Updated : <")
(setq time-stamp-end ">")

;; Use non-string time-stamp-format? $B$rI=<($5$;$J$$(B
(setq time-stamp-old-format-warn nil)

;; $BI=<(%U%)!<%^%C%H$NDj5A$9$k(B
(setq time-stamp-format
      '(time-stamp-yyyymmdd time-stamp-english-a time-stamp-hh-colon-mm))

;; $BDj5A$N%P%C%/%"%C%W(B1
;(setq time-stamp-format
;      '(time-stamp-yyyy/mm/dd time-stamp-english-a time-stamp-hh:mm:ss))
;; $BDj5A$N%P%C%/%"%C%W(B2
;(setq time-stamp-format "%:y/%02m/%02d (%3a) %02H:%02M")
(if (not (memq 'time-stamp write-file-hooks))
    (setq write-file-hooks
          (cons 'time-stamp write-file-hooks)))

