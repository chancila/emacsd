;;; ch-company.el --- Company mode module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'company)
(ch-require-package 'company-c-headers)

(require 'company)
(require 'company-c-headers)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 2)

(add-to-list 'company-backends 'company-c-headers)

(global-set-key (kbd "<C-tab>") 'company-complete)

(provide 'ch-company)
;;; ch-company.el ends here
