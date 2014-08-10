;;; ch-variables.el --- Common variables
;;; Commentary:
;;; Code:
(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(defvar ch-root-dir
  (file-name-directory load-file-name)
  "Root directory.")

(defvar ch-packages-dir
  (expand-file-name "modules" ch-root-dir)
  "Packages directory.")

(defvar ch-savefile-dir
  (expand-file-name "savefile" ch-root-dir)
  "Stores all the automatically generated save/history-files.")

(provide 'ch-variables)
;;; ch-variables.el ends here
