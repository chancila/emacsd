;;; ch-c-mode.el --- C mode stuff
;;; Commentary:
;;; Code:
(require 'ch-flycheck)
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
  (c-set-style "user"))

(add-hook 'c-mode-common-hook 'ch-c-mode-common-defaults)

(defun ch-cpp-mode-hook ()
  "C++ mode hook."
  (setq flycheck-clang-language-standard "c++14")
  (setq flycheck-gcc-language-standard "c++14"))

(add-hook 'c++-mode-hook 'ch-cpp-mode-hook)

(provide 'ch-c-mode)
;;; ch-c-mode.el ends here
