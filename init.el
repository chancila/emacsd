;;; init.el -- My emacs init file
;;; Commentary:
;;; Code:
(unless
    (and (<= emacs-major-version 24)
         (<= emacs-minor-version 3))
  (setq load-prefer-newer t))

(add-to-list 'load-path (file-name-directory load-file-name))

(require 'ch-variables)

(unless (file-exists-p ch-savefile-dir)
  (make-directory ch-savefile-dir))

(add-to-list 'load-path ch-packages-dir)

(setq gc-cons-threshold 50000000)

(require 'ch-packages)
(require 'ch-modules)

(provide 'init)
;;; init.el ends here
