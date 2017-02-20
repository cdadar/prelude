;; personal-ruby.el --- Enhance Ruby programming
;;
;; Copyright (C) 2012-2014 Huang Bin
;;
;; Author: Huang Bin <huangbin88@foxmail.com>
;; Version: 1.0.0

;;; Commentary:

;; This file is not part of GNU Emacs.

;;; Code:

(prelude-require-packages '(bundler robe ruby-hash-syntax projectile-rails))

(eval-after-load 'ruby-mode
  '(progn
     "Setup ruby mode."
     (require 'ruby-hash-syntax)
     (define-key ruby-mode-map (kbd "C-c #") 'ruby-toggle-hash-syntax)

     ;; Prevent Emacs from adding coding shebang automatically.
     (setq ruby-insert-encoding-magic-comment nil)

     ;; Font lock for new hash style.
     (font-lock-add-keywords
      'ruby-mode
      '(("\\(\\b\\sw[_a-zA-Z0-9]*:\\)\\(?:\\s-\\|$\\)" (1 font-lock-constant-face))
        ("\\(^\\|[^_:.@$\\W]\\|\\.\\.\\)\\b\\(include\\|extend\\|require\\|autoload\\)\\b[^_:.@$\\W]" . font-lock-function-name-face)))

     ;;; Bundler configuration start {{{
     (require 'bundler)

     (defvar bundle-commonly-used-gems
       '("actionpack"
         "activemodel"
         "activerecord"
         "activesupport"
         "railties"
         ))

     (defun bundle-commonly-used-gem-paths ()
       "Get commonly used gems' paths."
       (-filter 'stringp (-map 'bundle-gem-location
                               bundle-commonly-used-gems)))

          ;;; Robe
     (require 'robe)
     (define-key ruby-mode-map (kbd "C-c ]") 'robe-jump)
     (define-key ruby-mode-map (kbd "C-c [") 'pop-tag-mark)

     ;;; Rails start {{{
     (custom-set-variables
      '(projectile-rails-expand-snippet nil)
      '(projectile-rails-keymap-prefix (kbd "C-c ;"))
      '(projectile-rails-font-lock-face-name 'font-lock-function-name-face))

     (require 'projectile-rails)
     (projectile-rails-global-mode)

     (let ((map projectile-rails-mode-map))
       (define-key map (kbd "s-<return>") 'projectile-rails-goto-file-at-point)
       (define-key map (kbd "C-c ; r") 'projectile-rails-find-spec)
       (define-key map (kbd "C-c ; R") 'projectile-rails-find-current-spec)
       (define-key map (kbd "C-c ; p") 'projectile-rails-console)
       (define-key map (kbd "C-c ; P") 'projectile-rails-server))
     ;;; Rails end }}}

     ;;; Defaults
     (defun personal-ruby-mode-defaults ()
       "Modify the Ruby syntax."
       ;; Words prefixed with $ are global variables,
       ;; prefixed with @ are instance variables.
       (modify-syntax-entry ?$ "w")
       (modify-syntax-entry ?@ "w"))

     (setq personal-ruby-mode-hook 'personal-ruby-mode-defaults)
     (add-hook 'ruby-mode-hook (lambda () (run-hooks 'personal-ruby-mode-hook)))))

(provide 'personal-ruby)
;;; personal-ruby.el ends here
