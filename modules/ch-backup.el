;;; ch-backup.el --- Backup and savefiles module
;;; Commentary:
;;; This mostly deals with any non-elpa modules that need
;;; to put crap in the ch-savefile-dir.
;;; Code:
(require 'bookmark)
(require 'ch-variables)
(require 'dash)
(require 'recentf)
(require 'savehist)
(require 'saveplace)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq auto-save-list-file-prefix
      (f-join ch-savefile-dir ".saves-"))
;;; saveplace
(setq save-place-file (expand-file-name "saveplace" ch-savefile-dir))
(setq-default save-place t)

;;recentf
(setq recentf-save-file (expand-file-name "recentf" ch-savefile-dir)
      recentf-max-saved-items 500
      recentf-max-menu-items 15)
(defun ch-recentf-exclude-p (file)
  "A predicate to decide whether to exclude FILE from recentf."
  (let ((file-dir (file-truename (file-name-directory file))))
    (-any-p (lambda (dir)
              (string-prefix-p dir file-dir))
            (mapcar 'file-truename (list ch-savefile-dir package-user-dir)))))

(add-to-list 'recentf-exclude 'ch-recentf-exclude-p)
(recentf-mode +1)

;;savehist
(setq savehist-additional-variables
      ;; search entries
      '(search ring regexp-search-ring)
      ;; save every minute
      savehist-autosave-interval 60
      ;; keep the home clean
      savehist-file (expand-file-name "savehist" ch-savefile-dir))
(savehist-mode +1)

;;; bookmarks
(setq bookmark-default-file (expand-file-name "bookmarks" ch-savefile-dir)
      bookmark-save-flag 1)

(provide 'ch-backup)
;;; ch-backup.el ends here
