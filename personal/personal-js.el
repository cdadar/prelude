(require 'prelude-js)

(prelude-require-package 'tern)

(add-hook 'js2-mode-hook (lambda ()
                           (tern-mode t)))



;; (prelude-require-package 'company-tern)
;; (add-to-list 'company-backends 'company-tern)

(prelude-require-package 'js2-refactor)
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")


;; (prelude-require-package 'js-comint)
;; (require 'js-comint)

;; ;; (setq inferior-js-program-command "node --interactive")
;; ;; (setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main")
;; (add-hook 'js2-mode-hook '(lambda ()
;; 			    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
;; 			    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
;; 			    (local-set-key "\C-cb" 'js-send-buffer)
;; 			    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
;; 			    (local-set-key "\C-cl" 'js-load-file-and-go)
;; 			    ))

(prelude-require-package 'nodejs-repl)
(require 'nodejs-repl)

(add-hook 'js-mode-hook
          (lambda ()
            (define-key js-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-sexp)
            (define-key js-mode-map (kbd "C-c M-r") 'nodejs-repl-send-region)
            (define-key js-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
            (define-key js-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))

(add-hook 'json-mode-hook
          (lambda ()
            (setq js-indent-level 2)))

(prelude-require-package 'vue-mode)
