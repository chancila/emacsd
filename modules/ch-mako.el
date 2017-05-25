;;; ch-mako.el --- Mako mode
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'mmm-mako)

(require 'mmm-mako)

(add-to-list 'auto-mode-alist '("\\.mako\\'" . html-mode))
(mmm-add-mode-ext-class 'html-mode "\\.mako\\'" 'mako)

(provide 'ch-mako)
;;; ch-mako.el ends here
