;;; ch-hippie-expand.el --- Hippie expand
;;; Commentary:
;;; Code:
(require 'ch-mode)
(define-key ch-mode-map (kbd "M-/") 'hippie-expand)

(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

(provide 'ch-hippie-expand)
;;; ch-hippie-expand.el ends here
