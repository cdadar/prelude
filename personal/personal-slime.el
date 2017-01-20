(load (expand-file-name "~/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "sbcl")
(require 'slime-autoloads)

(prelude-require-package 'slime-company)

(add-to-list 'company-backends 'slime-company)

(slime-setup '(slime-fancy slime-company))

