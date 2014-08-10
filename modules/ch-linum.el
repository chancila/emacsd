;;; ch-linum.el --- Line number stuff
;;; Commentary:
;;; Code:
(require 'ch-packages)

(ch-require-package 'linum-relative)
(global-linum-mode t)
(require 'linum-relative)

(provide 'ch-linum)
;;; ch-linum.el ends here
