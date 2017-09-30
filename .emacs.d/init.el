;; site-start.el -*- coding: iso-2022-7bit -*-

;;
;; $B%m!<%I%Q%9$N@_Dj(B
;;

;; ~/.emacs.d/elisp $B0J2<$rA4$F@_Dj$9$k(B
(let ((default-directory (expand-file-name "~/.emacs.d/elisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))


;;
;; $B%Q%C%1!<%84IM}(B
;;

;; package$B$r%m!<%I$9$k(B
(require 'package)

;; ELPA$B$N%$%s%9%H!<%k@h%G%#%l%/%H%j$r@_Dj$9$k(B
(setq package-user-dir "~/.emacs.d/elisp/elpa")

;; MELPA (Milkypostman$B!G(Bs Emacs Lisp Package Archive)$B$N%Q%C%1!<%80lMw$N<hF@@h$r@_Dj$9$k(B
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

;; MELPA$B$N0BDj%P!<%8%g%s$rM%@h$7$F<hF@$9$k(B
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; $B=i4|2==hM}(B
(package-initialize)


;;
;; $B%Q%C%1!<%8$N%$%s%9%H!<%k(B
;;

;; cl$B$r%m!<%I$9$k(B
(require 'cl)

;; package$B$G%$%s%9%H!<%k$9$k%Q%C%1!<%8$N%j%9%H$rDj5A$9$k(B
(defvar installing-package-list
  '(
    ;; $B;HMQ$9$k%Q%C%1!<%8$N%j%9%H(B
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

;; $B%$%s%9%H!<%k$5$l$F$$$J$$%Q%C%1!<%8$r%$%s%9%H!<%k$9$k(B
(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))


;;
;; init-loader$B$N@_Dj(B
;;

;; init-loader$B$r%m!<%I$9$k(B
(require 'init-loader)

; init-loader$B$GFI$_9~$`@_Dj%U%!%$%k$N$"$k%G%#%l%/%H%j$r;XDj$9$k(B
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
