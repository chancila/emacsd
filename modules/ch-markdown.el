;;; ch-markdown.el --- Markdown mode
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'markdown-mode)
(require 'markdown-mode)

(defun ch-configure-markdown-mode ()
  "Configure markdown mode hook."
  (setq markdown-command "multimarkdown"))

(add-hook 'markdown-mode-hook 'ch-configure-markdown-mode)

(provide 'ch-markdown)
;;; ch-markdown.el ends here
