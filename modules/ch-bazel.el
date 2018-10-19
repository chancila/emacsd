;;; ch-bazel.el --- Bazel module
;;; Commentary:
;;; Code:

(require 'ch-packages)
(ch-require-package 'bazel-mode)

(require 'bazel-mode)

(add-hook 'bazel-mode-hook (lambda () (add-hook 'before-save-hook #'bazel-format nil t)))
(add-to-list 'auto-mode-alist '(".*BUILD\\'" . bazel-mode))

(provide 'ch-bazel)
;;; ch-bazel.el ends here
