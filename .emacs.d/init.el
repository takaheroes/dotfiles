;; site-start.el -*- coding: iso-2022-7bit -*-

;;
;; ロードパスの設定
;;

;; ~/.emacs.d/elisp 以下を全て設定する
(let ((default-directory (expand-file-name "~/.emacs.d/elisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))


;;
;; パッケージ管理
;;

;; packageをロードする
(require 'package)

;; ELPAのインストール先ディレクトリを設定する
(setq package-user-dir "~/.emacs.d/elisp/elpa")

;; MELPA (Milkypostman’s Emacs Lisp Package Archive)のパッケージ一覧の取得先を設定する
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

;; MELPAの安定バージョンを優先して取得する
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; 初期化処理
(package-initialize)


;;
;; パッケージのインストール
;;

;; clをロードする
(require 'cl)

;; packageでインストールするパッケージのリストを定義する
(defvar installing-package-list
  '(
    ;; 使用するパッケージのリスト
    init-loader
    use-package
    ace-isearch
    ace-jump-mode
    auto-install
    dired-open
    dired-launch
    ddskk
    helm
    helm-swoop
    js2-mode
    migemo
    open-junk-file
    popwin
    recentf-ext
    ;; color-theme
    molokai-theme
    color-theme-sanityinc-solarized
    ))

;; インストールされていないパッケージをインストールする
(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))


;;
;; init-loaderの設定
;;

;; init-loaderをロードする
(require 'init-loader)

; init-loaderで読み込む設定ファイルのあるディレクトリを指定する
(init-loader-load "~/.emacs.d/config/inits")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-rectangle-mark-key "")
 '(package-selected-packages
   (quote
    (yasnippet color-theme-sanityinc-solarized molokai-theme recentf-ext popwin open-junk-file migemo js2-mode helm ddskk dired-launch dired-open auto-install ace-jump-mode ace-isearch use-package init-loader)))
 '(recentf-save-file "~/.emacs.d/etc/recentf/recentf"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
