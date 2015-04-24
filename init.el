;;; init.el -- My emacs init file
;;; Commentary:
;;; Code:
(unless
    (and (<= emacs-major-version 24)
         (<= emacs-minor-version 3))
  (setq load-prefer-newer t))

(add-to-list 'load-path (concat user-emacs-directory "core/"))

(require 'ch-variables)
(require 'ch-packages)
(require 'ch-functions)
(require 'ch-mode)

(unless (file-exists-p ch-savefile-dir)
  (make-directory ch-savefile-dir))

(add-to-list 'load-path ch-packages-dir)

(setq gc-cons-threshold 50000000)

(when (eq system-type 'darwin)
  (require 'ch-osx))

(require 'ch-modules)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-adaptive-history-file "~/.emacs.d/savefile/helm-adaptive-history"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
