;;; personal.el --- Emacs Prelude: Personal settings
;;
;;; Commentary:
;; Personal settings to augment those of Prelude
;; Install Emacs through homebrew with --cocoa --srgb

;;; Code:

;;; make cursor style bar
(setq-default cursor-type 'bar)

;; (prelude-require-package 'cursor-chg)
;; (curchg-default-cursor-color )
;; (setq evil-default-cursor "#ffffff")
;; (set-cursor-color "#ffffff")
(setq default-frame-alist
      '((cursor-color . "#ffffff")))

(scroll-bar-mode -1)
(delete-selection-mode 1)
(global-linum-mode -1)
;;; projectile default keybinding
;;(define-key projectile-mode-map (kbd "M-P") 'projectile-command-map)
;; If I'm running emacs, then I want it to be a server
(require 'server)
(unless (server-running-p)
  (server-start))

(prelude-require-package 'chinese-fonts-setup)
(require 'chinese-fonts-setup)

(chinese-fonts-setup-enable)
(prelude-require-packages '(swiper counsel counsel-projectile))
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)
(counsel-projectile-on)
;;; personal.el ends here
