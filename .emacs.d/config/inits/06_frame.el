;;
;; Frameの設定
;;

;; Frameのサイズを設定する（Macbook Air 13.3インチ向け）
(setq default-frame-alist
      (append (list
	       '(top . 26)
	       '(left . 0)
	       '(width . 124)
	       '(height . 38) ;; Macbook Airだとここが60だと画面が変になる
	       '(cursor-type . box)
	       )
	      default-frame-alist))

;; スクロールバーを右側に表示する
(set-scroll-bar-mode 'right)

;; タイトルバーにバッファ名とファイルパス名を表示する
(setq frame-title-format '("%b" "(%f)"))

;; ツールバーを非表示にする
(tool-bar-mode 0)

;; Frameが1ウィンドウの場合は縦に分割する
;; 既に分割されている場合は他ウィンドウにカーソルを移動する関数を定義する
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))

