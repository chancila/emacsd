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

(defun ch-fill-eq (&optional arg)
  "Fill line with = until ARG colum."
  (interactive "P")
  (insert-char (string-to-char "=") (- (or arg 100) (current-column))))

(defun ch-snakecase-to-typecase ()
  "Convert the current word to TypeCase from snake_case_t."
  (interactive)
  (let* ((bounds (bounds-of-thing-at-point 'symbol))
         (to_rep   (mapconcat 'capitalize (s-split "_" (s-chop-suffix "_t" (current-word))) "")))
    (delete-region (car bounds) (cdr bounds))
    (insert to_rep)))

(provide 'ch-functions)
;;; ch-functions.el ends here
