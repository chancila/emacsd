;;; ch-mc.el --- Multiple cursors
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'multiple-cursors)

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'ch-mc)
;;; ch-mc.el ends here
