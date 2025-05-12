;;; ch-packages.el --- Utilities for package management
;;; Commentary:
;;; package management functions
;;; only depends on vars set in init.el
;;; Code:
(require 'package)
(require 'ch-variables)

;; defined in init.el
(defvar ch-root-dir)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-refresh-contents)

(setq package-user-dir (expand-file-name "elpa" ch-root-dir))

;; ghetto install dash
(unless (package-installed-p 'dash)
  (progn (package-refresh-contents)
    (package-install 'dash)))

(require 'dash)

(defvar ch-packages
  '(diminish f popup s)
  "Basic packages.")

(defun ch-packages-installed-p ()
  "Check if all packages in `ch-packages' are installed."
  (-all? 'package-installed-p ch-packages))

(defun ch-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package ch-packages)
    (add-to-list 'ch-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun ch-require-packages (packages)
  "Ensure PACKAGES are installed.  Missing packages are installed automatically."
  (-each packages 'ch-require-package))

(defun ch-install-packages ()
  "Install all packages listed in `ch-packages'."
  (unless (ch-packages-installed-p)
    (message "%s" "refreshing its package database...")
    (message "%s" " done.")
    (ch-require-packages ch-packages)))

(ch-install-packages)

(provide 'ch-packages)
;;; ch-packages.el ends here
