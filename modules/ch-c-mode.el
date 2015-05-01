;;; ch-c-mode.el --- C mode stuff
;;; Commentary:
;;; Code:
(require 'ch-flycheck)

(defun ch-c-mode-common-defaults ()
  (setq c-basic-offset 4)
  (c-set-offset 'innamespace '-)
  (c-set-offset 'arglist-cont-nonempty '+)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'innamespace 0))

(add-hook 'c-mode-common-hook 'ch-c-mode-common-defaults)

(defun ch-cpp-mode-hook ()
  "C++ mode hook."
  (setq flycheck-clang-language-standard "c++14")
  (setq flycheck-gcc-language-standard "c++14"))

(add-hook 'c++-mode-hook 'ch-cpp-mode-hook)

(provide 'ch-c-mode)
;;; ch-c-mode.el ends here
