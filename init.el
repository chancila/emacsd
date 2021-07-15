;;; init.el -- My emacs init file
;;; Commentary:
;;; Code:


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "/dev/null")

(setq load-prefer-newer t)

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

;; (add-to-list 'default-frame-alist
;;              '(font . "Iosevka Nerd Font Mono-13"))

(provide 'init)

;;; init.el ends here
