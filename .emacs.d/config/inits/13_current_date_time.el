;;
;; 現在の日付や時刻の挿入
;;

;; 現在の日付を挿入する
(defun insert-current-date()
  (interactive)
  (insert (format-time-string "%Y/%m/%d (%a)" (current-time))))

;; 現在の時刻を挿入する
(defun insert-current-time()
  (interactive)
  (insert (format-time-string "%H:%M" (current-time))))
