;;; ch-rust.el --- Rust mode
;;; Commentary:
;;; Code:
(require 'ch-packages)
(require 'ch-company)
(require 'ch-flycheck)

(ch-require-package 'company-racer)
(ch-require-package 'flycheck-rust)
(ch-require-package 'racer)
(ch-require-package 'rust-mode)

(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-racer))

(add-hook 'rust-mode-hook
          '(lambda ()
             (eldoc-mode)
             (racer-mode)
             (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(provide 'ch-rust)
;;; ch-rust.el ends here
