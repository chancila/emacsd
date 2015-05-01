;;; ch-irony.el --- Iron mode module
;;; Commentary:
;;; Code:

(require 'ch-packages)
(require 'ch-company)

(ch-require-package 'irony)
(ch-require-package 'company-irony)
(ch-require-package 'flycheck-irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

(provide 'ch-irony)
;;; ch-irony.el ends here
