;;; ch-ivy.el --- Ivy module configuration
;;; Commentary:
;;; Code:
(require 'ch-packages)

(ch-require-package 'ivy)
(ch-require-package 'counsel)
(ch-require-package 'counsel-projectile)

(global-set-key (kbd "C-c p A") 'counsel-ag)

(provide 'ch-ivy)
;;; ch-ivy.el ends here
