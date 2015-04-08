;;; ch-mc.el --- Multiple cursors
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'multiple-cursors)

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key (kbd "C-M-s-c") 'mc/edit-lines)
(global-set-key (kbd "C-M-s-n") 'mc/mark-next-lines)
(global-set-key (kbd "M-s-p") 'mc/mark-next-like-this)
(global-set-key (kbd "M-s-n") 'mc/unmark-next-like-this)

(provide 'ch-mc)
;;; ch-mc.el ends here
