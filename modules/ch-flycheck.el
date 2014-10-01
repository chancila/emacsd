;;; ch-flycheck.el --- Flycheck module
;;; Commentary:
;;; Code:

(require 'ch-packages)
(ch-require-package 'flycheck)

(require 'flycheck)

(defun ch-configure-flycheck-elisp ()
  "Configure some stuff for flycheck when in elisp mode."
  (setq flycheck-emacs-lisp-load-path load-path))

(defun ch-configure-flycheck-cpp ()
  "Configure some stuff for flycheck when in elisp mode."
  (setq flycheck-gcc-language-standard "c++11")
  (setq flycheck-clang-language-standard "c++11"))

(add-hook 'emacs-lisp-mode-hook 'ch-configure-flycheck-elisp)
(add-hook 'c++-mode-hook 'ch-configure-flycheck-cpp)

(global-flycheck-mode t)

(provide 'ch-flycheck)
;;; ch-flycheck.el ends here
