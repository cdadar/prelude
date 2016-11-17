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

;;同时编辑多个区域的插件
;; (prelude-require-package 'iedit)
;; (global-set-key (kbd "M-s e") 'iedit-mode)

;; (prelude-require-packages '(editorconfig))
;; (require 'editorconfig)
;;; personal.el ends here

;;禁止 Emacs 自动生成备份文件
(setq make-backup-files nil)


;; 将所选区域缩小到其先前的带大小的快捷键
(require 'expand-region)
(global-set-key (kbd "C-|") 'er/contract-region)
