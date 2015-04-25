;;; ch-company.el --- Company mode module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'company)
(ch-require-package 'company-c-headers)

(require 'company)
(require 'company-c-headers)

(add-hook 'after-init-hook 'global-company-mode)

(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.9.2/")

(provide 'ch-company)
;;; ch-company.el ends here
