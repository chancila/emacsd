;;; ch-mode.el --- ch mode
;;; Commentary:
;;; Code:
(defvar ch-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-s r") 'load-file)
    (define-key map (kbd "C-s-=") 'ch-indent-buffer)
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

(provide 'ch-mode)
;;; ch-mode.el ends here
