;;; ch-editor.el --- Misc editor stuff
;;; Commentary:
;;; Code:
(delete-selection-mode t)
(global-auto-revert-mode t)
(setq require-final-newline t)
(setq tab-always-indent 'complete)
(set-default 'truncate-lines nil)
(provide 'ch-editor)
;;; ch-editor.el ends here
