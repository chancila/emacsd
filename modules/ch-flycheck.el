;;; ch-flycheck.el --- Flycheck module
;;; Commentary:
;;; Code:

(require 'ch-packages)
(ch-require-package 'flycheck)

(require 'flycheck)

(global-flycheck-mode t)

(provide 'ch-flycheck)
;;; ch-flycheck.el ends here
