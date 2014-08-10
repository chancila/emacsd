;;; ch-expand-region.el --- Expandregion module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(require 'ch-keychord)
(ch-require-package 'expand-region)
(require 'expand-region)
(key-chord-define-global "jr" 'er/expand-region)

(provide 'ch-expand-region)
;;; ch-expand-region.el ends here
