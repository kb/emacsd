;;; package --- Org

;;; Summary:

;;; Commentary:

;;; Code:
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/org/work.org"))


(provide 'org-preferences)
;;; org-preferences.el ends here
