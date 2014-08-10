;;; ch-emacs-lisp.el --- Emacs lisp module
;;; Commentary:
;;; Code:
(require 'ch-rainbow)
(add-hook 'emacs-lisp-mode-hook 'rainbow-identifiers-mode)
(provide 'ch-emacs-lisp)
;;; ch-emacs-lisp.el ends here
