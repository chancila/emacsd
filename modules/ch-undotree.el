;;; ch-undotree.el --- Undo tree support
;;; Commentary:
;;; Code:
(require 'ch-packages)

(ch-require-package 'undo-tree)
(require 'undo-tree)

(global-undo-tree-mode t)
(key-chord-define-global "uu" 'undo-tree-visualize)

(provide 'ch-undotree)
;;; ch-undotree.el ends here
