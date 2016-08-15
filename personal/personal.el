;;; personal.el --- Emacs Prelude: Personal settings
;;
;;; Commentary:
;; Personal settings to augment those of Prelude
;; Install Emacs through homebrew with --cocoa --srgb

;;; Code:

;;; make cursor style bar
(setq-default cursor-type 'bar)

;;; projectile default keybinding
(define-key projectile-mode-map (kbd "M-P") 'projectile-command-map)
;; If I'm running emacs, then I want it to be a server
(require 'server)
(unless (server-running-p)
  (server-start))

(prelude-require-package 'chinese-fonts-setup)
(require 'chinese-fonts-setup)
;;; personal.el ends here
