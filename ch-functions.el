;;; ch-functions.el --- Utility functions
;;; Commentary:
;;; Package-Requires: ((f "0.16"))
;;; Code:
(require 'f)

(defun ch-jump-relative (number)
  "Jump NUMBER of lines relative from the cursor."
  (interactive "nJump relative: ")
  (forward-line number))

(defun ch-ensure-dir-exists (dir)
  "Ensures DIR  exists, create it otherwise."
  (unless (f-exists? dir)
    (f-mkdir dir)))

(defun ch-indent-buffer ()
  "Indent, delete trailing whitespace and untabify whole buffer."
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(provide 'ch-functions)
;;; ch-functions.el ends here
