;;; ch-clang-format.el --- clang format support
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'clang-format)

(customize-set-variable
 'clang-format-executable
 "/usr/local/opt/llvm/bin/clang-format")

(defun clang-format-cc-mode-hook ()
  "Install clang-format-buffer to cc-mode."
  (local-set-key (kbd "C-s-f") 'clang-format-buffer))

(add-hook 'c-mode-common-hook 'clang-format-cc-mode-hook)

(provide 'ch-clang-format)

;;; ch-clang-format.el ends here
