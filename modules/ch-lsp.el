;;; ch-lsp.el --- C mode stuff
;;; Commentary:
;;; Code:
(require 'ch-packages)

(ch-require-package 'lsp-mode)
(ch-require-package 'ccls)
(ch-require-package 'company)
(ch-require-package 'company-lsp)

(require 'ch-projectile)
(require 'ccls)
(require 'company-lsp)

(push 'company-lsp company-backends)
(setq company-transformers nil company-lsp-async t company-lsp-cache-candidates nil)
(setq ccls-executable "/Users/cristianh/src/ccls/Release/ccls")

(defun ch-enable-ccls ()
  "Enable ccls if the current projectile project has a compile-commands.json database."
  (if (f-exists? (f-join (projectile-project-root) "compile_commands.json"))
      (progn (lsp-ccls-enable)
             (company-mode))))

(add-hook 'c-mode-common-hook 'ch-enable-ccls)
(provide 'ch-lsp)
;;; ch-lsp.el ends here
