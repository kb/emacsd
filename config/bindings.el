;;; Commentary: KEYBINDINGS

(require 'term)

;; Resize windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Indent to the proper place after a return
(global-set-key (kbd "RET") 'newline-and-indent)

;; From anywhere on a line, goto end and then make newline
(global-set-key [(shift return)] 'insert-empty-line)

;; Use regex searches by default.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Should be able to eval-and-replace anywhere.
(global-set-key (kbd "C-c e") 'eval-and-replace)

;; Duplicate line keystroke
(global-set-key (kbd "C-c d") 'duplicate-line)

;; Comment or uncomment region keystroke
(global-set-key (kbd "C-c / ") 'comment-or-uncomment-region)

;; Magit status
(global-set-key (kbd "C-c m") 'magit-status)

;; Access rgrep w/o having to M-x rgrep
(global-set-key (kbd "C-c g") 'rgrep)

;; Make term line mode and term char mode a signle keystroke toggle
;; http://joelmccracken.github.io/entries/switching-between-term-mode-and-line-mode-in-emacs-term/
(defun kbolton/term-toggle-mode ()
  "Toggles term between line mode and char mode"
  (interactive)
  (if (term-in-line-mode)
      (term-char-mode)
    (term-line-mode)))

(define-key term-mode-map (kbd "C-c C-j") 'kbolton/term-toggle-mode)
(define-key term-mode-map (kbd "C-c C-k") 'kbolton/term-toggle-mode)

(define-key term-raw-map (kbd "C-c C-j") 'kbolton/term-toggle-mode)
(define-key term-raw-map (kbd "C-c C-k") 'kbolton/term-toggle-mode)

;; org
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(provide 'bindings)
