;;; ch-osx.el --- OSX support
;;; Commentary:
;;; Code:
(require 'ch-mode)
(setq ns-function-modifier 'hyper)

(defun ch-swap-meta-and-super ()
  "Swap the mapping of Meta and Super.
Very useful for people using their Mac with a
Windows external keyboard from time to time."
  (interactive)
  (if (eq mac-command-modifier 'super)
      (progn
        (setq mac-command-modifier 'meta)
        (setq mac-option-modifier 'super)
        (message "Command is now bound to META and Option is bound to SUPER."))
    (progn
      (setq mac-command-modifier 'super)
      (setq mac-option-modifier 'meta)
      (message "Command is now bound to SUPER and Option is bound to META."))))

(define-key ch-mode-map (kbd "C-c w") 'ch-swap-meta-and-super)

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(provide 'ch-osx)
;;; ch-osx.el ends here
