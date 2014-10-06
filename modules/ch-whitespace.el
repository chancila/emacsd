;;; ch-whitespace.el --- Whitespace module
;;; Commentary:
;;; Code:
(require 'whitespace)

(setq whitespace-line-column 100)
(setq whitespace-style '(face empty trailing newline lines-tail))
(setq whitespace-action '(cleanup auto-cleanup))
(global-whitespace-mode t)

(provide 'ch-whitespace)
;;; ch-whitespace.el ends here
