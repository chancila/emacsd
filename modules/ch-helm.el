;;; ch-helm.el --- Helm configuration
;;; Commentary:
;;; Code:

(require 'ch-packages)
(ch-require-package 'helm)
(ch-require-package 'helm-ag)

(require 'helm-config)

(helm-mode 1)

(global-set-key (kbd "C-x C-b") 'helm-buffers-list)

(customize-set-variable
 'helm-adaptive-history-file
 (f-join ch-savefile-dir  "helm-adaptive-history"))

(provide 'ch-helm)
;;; ch-helm.el ends here
