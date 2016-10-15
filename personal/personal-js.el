(require 'prelude-js)
(prelude-require-package 'tern)
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))

(prelude-require-package 'js2-refactor)
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")


(prelude-require-package 'js-comint)
(require 'js-comint)

;; (setq inferior-js-program-command "node --interactive")
;; (setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main")
(add-hook 'js2-mode-hook '(lambda ()
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
			    (local-set-key "\C-cb" 'js-send-buffer)
			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
			    (local-set-key "\C-cl" 'js-load-file-and-go)
			    ))

(prelude-require-package 'nodejs-repl)
(require 'nodejs-repl)

(prelude-require-package 'vue-mode)
