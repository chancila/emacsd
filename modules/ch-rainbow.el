;;; ch-rainbow.el --- Rainbow mode
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-packages '(rainbow-mode
                       rainbow-blocks
                       rainbow-delimiters
                       rainbow-identifiers))

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'ch-rainbow)
;;; ch-rainbow.el ends here
