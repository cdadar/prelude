(prelude-require-package 'yasnippet)
;; 使用Ctrl-c k作为唯一的触发快捷键
(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "C-c C-SPC") 'yas-expand)
(define-key yas-minor-mode-map (kbd "C-c C-x C-c") 'yas-insert-snippet)
(define-key yas-minor-mode-map (kbd "C-c C-x C-n") 'yas-new-snippet)
(define-key yas-minor-mode-map (kbd "C-c C-x C-v") 'yas-visit-snippet-file)




(yas-global-mode t)
;;加载模板位置
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)
