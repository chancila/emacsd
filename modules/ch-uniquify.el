;;; ch-uniquify.el --- Uniquify module
;;; Commentary:
;;; Code:
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)    ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

(provide 'ch-uniquify)
;;; ch-uniquify.el ends here
