;;; ch-c-mode.el --- C mode stuff
;;; Commentary:
;;; Code:
(defun ch-c-mode-common-defaults ()
  (setq c-basic-offset 4)
  (c-set-offset 'arglist-cont-nonempty '+)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'substatement-open 0))

(add-hook 'c-mode-common-hook 'ch-c-mode-common-defaults)

(provide 'ch-c-mode)
;;; ch-c-mode.el ends here
