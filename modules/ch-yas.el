;;; ch-yas.el --- Yasnippets module
;;; Commentary:
;;; Code:
(require 'ch-functions)
(require 'ch-packages)
(require 'ch-variables)

(ch-require-package 'yasnippet)
(require 'yasnippet)

(defvar ch-yas-snippets-dir (expand-file-name "snippets" ch-root-dir))
(ch-ensure-dir-exists ch-yas-snippets-dir)

(setq yas-snippet-dirs (list ch-yas-snippets-dir))
(yas-global-mode t)


(defun ch-yas-get-mode-dir ()
  "Get the snippet folder for the current major mode."
  (expand-file-name (symbol-name major-mode) ch-yas-snippets-dir)
  )

(defun ch-yas-create-snippet (name)
  "Create a snippet NAME for the current mode."
  (interactive "sName: ")
  (let* ((snipdir (ch-yas-get-mode-dir))
         (snipfile (expand-file-name name snipdir))
         (snipexists (f-exists? snipfile)))
    (ch-ensure-dir-exists snipdir)
    (find-file snipfile)
    (kill-all-local-variables)
    (snippet-mode)
    (if (not snipexists)
        (yas-expand-snippet yas-new-snippet-default nil nil ()))
    )
  )

(global-set-key (kbd "C-M-y c") 'ch-yas-create-snippet)

(add-hook 'snippet-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-M-y k") 'yas-load-snippet-buffer-and-close)
             ))

(provide 'ch-yas)
;;; ch-yas.el ends here
