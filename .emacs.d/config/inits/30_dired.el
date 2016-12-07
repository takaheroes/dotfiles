;;
;; diredの設定
;;

;; diredのロード
(use-package dired)
(use-package dired-x)

;; ファイルを削除したらゴミ箱へ
(setq delete-by-moving-to-trash t)


(setq dired-guess-shell-alist-user
      '(("\\.\\(ppt\\|PPT\\|pptx\\|PPTX\\)\\'" "open")))

;; dired-find-alternate-file を有効化する
;; （バッファを新規に作成しないでファイルを開く）
(put 'dired-find-alternate-file 'disabled nil)

;; ファイルなら別バッファで、ディレクトリなら同じバッファで開く関数を定義する
(defun dired-open-in-accordance-with-situation ()
  (interactive)
  (let ((file (dired-get-filename)))
    (if (file-directory-p file)
        (dired-find-alternate-file)
      (dired-find-file))))

;; ディレクトリを先に表示する
(setq ls-lisp-dirs-first t)

;; サイズ，拡張子で並び換え
;;(load "sorter")

;; find-dired を Cygwin 無しで使う
(autoload 'find-dired-lisp "find-dired-lisp" "findr" t nil)
(autoload 'find-grep-dired-lisp "find-dired-lisp" "findr" t nil)

;;; dired を使って、一気にファイルの coding system (漢字) を変換する
(require 'dired-aux)
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key (current-local-map) "T"
              'dired-do-convert-coding-system)))

(defvar dired-default-file-coding-system nil
  "*Default coding system for converting file (s).")

(defvar dired-file-coding-system 'no-conversion)

(defun dired-convert-coding-system ()
  (let ((file (dired-get-filename))
        (coding-system-for-write dired-file-coding-system)
        failure)
    (condition-case err
        (with-temp-buffer
          (insert-file file)
          (write-region (point-min) (point-max) file))
      (error (setq failure err)))
    (if (not failure)
        nil
      (dired-log "convert coding system error for %s:\n%s\n" file failure)
      (dired-make-relative file))))

(defun dired-do-convert-coding-system (coding-system &optional arg)
  "Convert file (s) in specified coding system."
  (interactive
   (list (let ((default (or dired-default-file-coding-system
                            buffer-file-coding-system)))
           (read-coding-system
            (format "Coding system for converting file (s) (default, %s): "
                    default)
            default))
         current-prefix-arg))
  (check-coding-system coding-system)
  (setq dired-file-coding-system coding-system)
  (dired-map-over-marks-check
   (function dired-convert-coding-system) arg 'convert-coding-system t))

;; diredを2つのウィンドウで開いている時に、デフォルトの移動 or
;; コピー先をもう一方のdiredで開いているディレクトリにする
(setq dired-dwim-target t)

