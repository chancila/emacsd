;;; ch-smartparens.el --- Smart parens
;;; Commentary:
;;; Code:

(require 'ch-packages)
(ch-require-package 'smartparens)

(require 'smartparens-config)

(show-smartparens-global-mode)
(smartparens-global-mode)

(provide 'ch-smartparens)
;;; ch-smartparens.el ends here
