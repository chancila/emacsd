;;; ch-modules.el --- Module handling
;;; Commentary:
;;; Code:
(require 'ch-variables)
(require 'dash)
(require 'f)
(require 's)

(defun ch-symbol-of-module (filename)
  "Return the symbol that FILENAME provides."
  (intern (s-chop-suffix ".el" filename)))

(defun ch-load-module (filename)
  "Load the module FILENAME defines."
  (require (ch-symbol-of-module filename)))

(defun ch-get-modules ()
  "Return all the modules in the module dir."
  (-map 'f-filename (f-glob "*.el" ch-packages-dir)))

(defun ch-load-all-modules ()
  "Load all modules in the module dir."
  (-each (ch-get-modules) 'ch-load-module))

(ch-load-all-modules)

(provide 'ch-modules)
;;; ch-modules.el ends here
