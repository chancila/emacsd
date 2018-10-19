;;; ch-cmake.el --- CMake module
;;; Commentary:
;;; Code:

(require 'ch-packages)
(require 'f)
(ch-require-package 'cmake-mode)

(defun ch-cmake-format-buffer ()
  "Use cmake-format to format the buffer."
  (interactive)
  (let* ((temp-file (make-temp-file "cmake-format"))
         (temp-buffer (generate-new-buffer " *cmake-format-temp*"))
         (cmake-format-config (f-traverse-upwards
                               (lambda (path)
                                 (f-exists? (f-expand ".cmake-format.py" path)))
                               (file-name-directory buffer-file-name))))
    (let ((inhibit-message t))
      (write-region nil nil temp-file))
    (let ((status (apply #'call-process
                         "cmake-format"
                         nil
                         temp-buffer
                         nil
                         `(,@(if cmake-format-config
                                 `("-c" ,(f-join cmake-format-config ".cmake-format.py"))
                               '())
                           ,temp-file))))
      (cond
       ((not (zerop status))
        (error "Failed to format cmake, cmake-format failed with code %d" status))
       ((zerop status)
        (erase-buffer)
        (insert-buffer-substring temp-buffer)
        ))
      )
    (kill-buffer temp-buffer)
    (delete-file temp-file)
    ))
(provide 'ch-cmake)
;;; ch-cmake.el ends here
