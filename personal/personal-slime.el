(load (expand-file-name "~/quicklisp/slime-helper.el"))

(setq inferior-lisp-program "sbcl")
(require 'slime-autoloads)

(prelude-require-package 'slime-company)

(setq slime-contribs '(slime-fancy))
(slime-setup '(slime-fancy slime-company))

