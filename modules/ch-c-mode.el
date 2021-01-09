;;; ch-c-mode.el --- C mode stuff
;;; Commentary:
;;; Code:
(require 'cc-mode)
(require 'cc-align)

(defun ch-c-mode-common-defaults ()
  "Set cc-mode defaults."
  (c-add-style "user"
               '("linux"
                 (c-basic-offset . 4)
                 (c-offsets-alist . ((arglist-cont-nonempty . c-lineup-arglist)
                                     (arglist-intro . c-lineup-arglist)
                                     (innamespace . 0)
                                     (substatement-open . +)
                                     (defun-block-intro . +)
                                     ))))
  (c-set-style "user")
  (local-set-key (kbd "C-c C-t") (lambda (cmd) (interactive "P")
                                   (save-buffer)
                                   (projectile-compile-project cmd))))

(add-hook 'c-mode-common-hook 'ch-c-mode-common-defaults)

(defun ch-cpp-mode-hook ()
  "C++ mode hook."
  (setq flycheck-clang-language-standard "c++17")
  (setq flycheck-gcc-language-standard "c++17"))

(add-hook 'c++-mode-hook 'ch-cpp-mode-hook)

(ch-require-package 'clang-format)

(require 'clang-format)
(customize-set-variable 'clang-format-executable "clang-format")

(provide 'ch-c-mode)
;;; ch-c-mode.el ends here
