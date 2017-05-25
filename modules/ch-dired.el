;;; ch-dired.el --- Dired module
;;; Commentary:
;;; Code:
(require 'dired)

(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq dired-use-ls-dired 'unspecified)

(provide 'ch-dired)
;;; ch-dired.el ends here
