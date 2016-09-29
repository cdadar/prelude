;;; Add in extra repositories/packages
;; (require 'package)
;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                           ("melpa" . "http://melpa.org/packages/")))
;; (package-initialize)

;; (when (not package-archive-contents) (package-refresh-contents))

(if (fboundp 'with-eval-after-load)
     (defalias 'after-load 'with-eval-after-load)
   (defmacro after-load (feature &rest body)
     "After FEATURE is loaded, evaluate BODY."
     (declare (indent defun))
     `(eval-after-load ,feature
        '(progn ,@body))))


;;(setq prelude-theme 'solarized-dark)
(setq prelude-theme 'solarized-light)



;; (setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
;; (setq exec-path (append exec-path '("/usr/local/bin")))
