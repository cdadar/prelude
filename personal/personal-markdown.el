(prelude-require-packages '(markdown-mode markdown-mode+))
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(setq markdown-css-dir "~/.emacs.d/personal/plugins/markdown-mode-css/css")
(setq markdown-css-theme "clearness")


(add-to-list 'load-path "~/.emacs.d/personal/plugins/")
(require'table)
(autoload 'table-insert "table" "WYGIWYS table editor")
;; (custom-set-variables
;;  (markdown-command "~/.cabal/bin/pandoc"))
