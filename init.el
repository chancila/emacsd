;;; init.el -- My emacs init file
;;; Commentary:
;;; Code:

(setq custom-file "/dev/null")

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

(if (f-exists? (locate-user-emacs-file "local.el"))
    (load-file (locate-user-emacs-file "local.el")))

(provide 'init)

;;; init.el ends here
