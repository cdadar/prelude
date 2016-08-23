(prelude-require-package 'yasnippet)
;; 使用Ctrl-c k作为唯一的触发快捷键
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c C-SPC") 'yas-expand)
(yas-global-mode t)
;;加载模板位置
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)
