;;; ch-python.el --- Ace jump module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'blacken)

(add-hook 'python-mode-hook 'blacken-mode)

(provide 'ch-python)
;;; ch-python.el ends here
