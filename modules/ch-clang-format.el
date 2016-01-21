;;; ch-clang-format.el --- clang format support
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'clang-format)

(customize-set-variable
 'clang-format-executable
 "/usr/local/opt/llvm/bin/clang-format")

(provide 'ch-clang-format)
;;; ch-clang-format.el ends here
