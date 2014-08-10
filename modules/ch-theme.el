;;; ch-theme.el --- Theme module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-packages '(solarized-theme
                       zenburn-theme))

(load-theme 'zenburn t)

(provide 'ch-theme)
;;; ch-theme.el ends here
