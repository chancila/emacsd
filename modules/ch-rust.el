;;; ch-rust.el --- Rust mode
;;; Commentary:
;;; Code:
(require 'ch-packages)
(require 'ch-flycheck)

(ch-require-package 'flycheck-rust)
(ch-require-package 'rust-mode)

(add-hook 'rust-mode-hook
          '(lambda ()
             (eldoc-mode)
             (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(provide 'ch-rust)
;;; ch-rust.el ends here
