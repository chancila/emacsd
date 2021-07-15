;;; ch-lsp.el --- C mode stuff
;;; Commentary:
;;; Code:
(require 'ch-packages)

(ch-require-package 'lsp-mode)
(ch-require-package 'lsp-python-ms)
(ch-require-package 'ccls)
(ch-require-package 'company)

(require 'ch-projectile)
(require 'ccls)

(defun ch-enable-ccls ()
  "Enable ccls if the current projectile project has a compile-commands.json database."
  (if (f-exists? (f-join (projectile-project-root) "compile_commands.json"))
      (progn (lsp))))

(setq lsp-python-ms-auto-install-server t)
(setq lsp-python-ms-python-executable-cmd "python3")

(defun ch-enable-py-lsp ()
  (lsp))

(add-hook 'python-mode-hook  'ch-enable-py-lsp)
(add-hook 'c-mode-hook  'ch-enable-ccls)
(add-hook 'objc-mode-hook  'ch-enable-ccls)
(add-hook 'c++-mode-hook  'ch-enable-ccls)
(add-hook 'after-init-hook 'global-company-mode)

(lsp-register-custom-settings
 '(("gopls.completeUnimported" t t)
   ("gopls.staticcheck" t t)
   ("gopls.env" '(("GOPACKAGESDRIVER" . "/home/chancila/bin/bazelgopackages")
                  ("GOPACKAGESDRIVER_BAZEL_QUERY" . "kind(go_binary, //...)")
                  ))))

(provide 'ch-lsp)
;;; ch-lsp.el ends here
