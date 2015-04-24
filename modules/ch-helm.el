;;; ch-helm.el --- Helm configuration
;;; Commentary:
;;; Code:

(require 'ch-packages)
(ch-require-package 'helm)
(ch-require-package 'helm-ag)

(customize-set-variable
 'helm-adaptive-history-file
 (f-join ch-savefile-dir  "helm-adaptive-history"))

(provide 'ch-helm)
;;; ch-helm.el ends here
