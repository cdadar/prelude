(require 'prelude-company)
(prelude-require-package 'company-tern)
(add-to-list 'company-backends '(company-tern))
(setq-default company-minimum-prefix-length 2)
(setq-default company-idle-delay 0.08)

(abbrev-mode t)

(define-abbrev-table 'global-abbrev-table '(
                                            ("8js" "javascript")
                                            ))

(prelude-require-package 'dumb-jump)
