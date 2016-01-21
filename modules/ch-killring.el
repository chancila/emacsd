;;; ch-killring.el --- Killing stuff
;;; Commentary:
;;; Code:
(require 'ch-packages)
(require 'ch-keychord)
(ch-require-package 'browse-kill-ring)

(key-chord-define-global "RR" 'browse-kill-ring)
(key-chord-define-global "yy" 'yank)
(provide 'ch-killring)
;;; ch-killring.el ends here
