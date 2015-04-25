;;; ch-projectile.el --- Projectile module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(require 'ch-ag)
(require 'ch-helm)

(ch-require-package 'projectile)
(ch-require-package 'helm-projectile)

(require 'projectile)
(setq projectile-cache-file (expand-file-name  "projectile.cache"
                                               ch-savefile-dir))
(setq projectile-known-projects-file (expand-file-name "projectile-bookmarks.eld"
						       ch-savefile-dir))

(define-key projectile-mode-map (kbd "C-c p A") 'projectile-ag)

(projectile-global-mode t)
(provide 'ch-projectile)
;;; ch-projectile.el ends here