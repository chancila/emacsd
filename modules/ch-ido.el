;;; ch-ido.el --- IDO support
;;; Commentary:
;;; Code:
(require 'ch-packages)
(ch-require-packages '(flx-ido
                       ido-ubiquitous
                       smex))

(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)

(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-save-directory-list-file (expand-file-name "ido.hist" ch-savefile-dir)
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)

(ido-mode +1)
(ido-ubiquitous-mode +1)

(flx-ido-mode +1)
(setq ido-use-faces nil)

(require 'smex)
(setq smex-save-file (expand-file-name ".smex-items" ch-savefile-dir))
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(provide 'ch-ido)
;;; ch-ido.el ends here
