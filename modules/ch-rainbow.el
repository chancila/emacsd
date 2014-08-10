;;; ch-rainbow.el --- Rainbow mode
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-packages '(rainbow-mode
                       rainbow-blocks
                       rainbow-delimiters
                       rainbow-identifiers))

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode +1)

(provide 'ch-rainbow)
;;; ch-rainbow.el ends here
