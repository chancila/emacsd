;;; ch-clang-format.el --- clang format support
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'clang-format)

(customize-set-variable
 'clang-format-executable
 "/Users/cristianh/src/llvm/build/bin//clang-format")

;; (add-hook 'c-mode-common-hook
;;           (lambda () (add-hook 'before-save-hook
;;                                (lambda () (clang-format-buffer))
;;                                nil t)))

(provide 'ch-clang-format)
;;; ch-clang-format.el ends here
