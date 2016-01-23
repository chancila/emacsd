;;; ch-mode.el --- ch mode
;;; Commentary:
;;; Code:

(require 'ch-functions)

(defvar ch-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-s-r") 'load-file)
    (define-key map (kbd "C-s-i") 'ch-indent-buffer)
    (define-key map (kbd "C-s-=") 'ch-fill-eq)
    (define-key map (kbd "C-s-s") 'sort-lines)
    (define-key map (kbd "C-s-t") 'ch-snakecase-to-typecase)
    map))

(define-minor-mode ch-mode
  "ch minor mode."
  nil
  :lighter " ch"
  :keymap ch-mode-map)

(define-globalized-minor-mode ch-global-mode ch-mode ch-on)

(defun ch-on ()
  "Turn on `ch-mode'."
  (ch-mode +1))

(defun ch-off ()
  "Turn off `ch-mode'."
  (ch-mode -1))

(ch-global-mode)

(provide 'ch-mode)
;;; ch-mode.el ends here
