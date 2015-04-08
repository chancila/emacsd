;;; ch-keychord.el --- Keychord module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'key-chord)
(require 'key-chord)
(key-chord-mode +1)

(key-chord-define-global "ii" 'imenu)

(provide 'ch-keychord)
;;; ch-keychord.el ends here
