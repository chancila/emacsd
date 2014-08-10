;;; ch-ace.el --- Ace jump module
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-package 'ace-jump-mode)

(require 'ace-jump-mode)
(require 'ch-keychord)
(setq ace-jump-mode-scope 'window)

(key-chord-define-global "jc" 'ace-jump-char-mode)
(key-chord-define-global "jw" 'ace-jump-word-mode)
(key-chord-define-global "jj" 'ace-jump-line-mode)

(provide 'ch-ace)
;;; ch-ace.el ends here
