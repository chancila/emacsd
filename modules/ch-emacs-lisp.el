;;; ch-emacs-lisp.el --- Emacs lisp module
;;; Commentary:
;;; Code:
(require 'ch-rainbow)

(add-hook 'emacs-lisp-mode-hook 'rainbow-identifiers-mode)

(defun ch-configure-flycheck-elisp ()
  "Configure some stuff for flycheck when in elisp mode."
  (setq flycheck-emacs-lisp-load-path load-path))

(add-hook 'emacs-lisp-mode-hook 'ch-configure-flycheck-elisp)

(provide 'ch-emacs-lisp)
;;; ch-emacs-lisp.el ends here
