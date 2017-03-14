(require 'prelude-company)
(prelude-require-package 'company-tern)
(add-to-list 'company-backends '(company-tern))
(setq-default company-minimum-prefix-length 2)
(setq-default company-idle-delay 0.08)

(abbrev-mode t)

(define-abbrev-table 'global-abbrev-table '(
                                            ("8js" "javascript")
                                            ))




(setq company-dabbrev-downcase nil)


;; c-headers
(prelude-require-package 'company-c-headers)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-c-headers))


;; (add-to-list 'company-c-headers-path-system "/usr/lib64/gcc/x86_64-suse-linux/4.8/include")
;; (add-to-list 'company-c-headers-path-system "/usr/local/include")
;; (add-to-list 'company-c-headers-path-system "/usr/lib64/gcc/x86_64-suse-linux/4.8/include-fixed")
;; (add-to-list 'company-c-headers-path-system "/usr/include")
