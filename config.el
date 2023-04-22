(setq user-full-name "Kyle Bolton")
(setq user-mail-address "kyle.bolton@gmail.com")

(setq backup-directory-alist (quote ((".*" . "~/.emacs_temp/backups"))))
(setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)"
,"~/.emacs_temp/autosaves" t)))

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("elpa" . "https://elpa.gnu.org/packages/"))
(package-initialize)

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(setq use-package-always-defer t)

(use-package auto-compile
  :demand t
  :config (auto-compile-on-load-mode))
  (setq load-prefer-newer t)

(use-package exec-path-from-shell
  :ensure t)
(when (daemonp)
  (exec-path-from-shell-initialize))

(use-package modus-themes
  :ensure t
  :demand
  :init
  (require 'modus-themes)
  (setq modus-themes-to-toggle '(modus-operandi-tinted modus-vivendi-tinted))
  (setq modus-themes-common-palette-overrides
  '((bg-region bg-lavender)
    (fg-region unspecified)
    (bg-mode-line-active bg-blue-intense)
    (fg-mode-line-active fg-main)
    (border-mode-line-active blue-intense)))

  ;; Add all customizations prior to loading the theme
  ;;
  ;; NOTE: Explictly pass a value to the second arg for NO-CONFIRM so that
  ;; emacs loads the theme w/o prompting.
  (load-theme 'modus-vivendi-tinted t))

(use-package magit
  :ensure t
  :bind ("C-c m" . magit-status))

(use-package multiple-cursors
  :ensure t)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package go-mode
  :ensure t)

(use-package yasnippet
  :ensure t)

(use-package yasnippet-snippets
  :ensure t
  :init (yas-global-mode))

(use-package lsp-mode
  :ensure t
  :config
(define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
(setq lsp-completion-provider :none)
(setq lsp-file-watch-threshold 2000))

(use-package lsp-ui
  :ensure t)

(use-package dap-mode
  :ensure t) ;; package contains the sub mode
(require 'dap-dlv-go)

(add-hook 'go-mode-hook #'lsp)

(add-hook 'go-mode-hook (lambda ()
    (setq tab-width 4)))

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(use-package protobuf-mode
  :ensure t)

(use-package dockerfile-mode
  :ensure t)

(use-package git-link
  :ensure t
  :bind (("C-c g l" . git-link)))

(use-package projectile
  :ensure t
  :init
  (projectile-mode)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

(use-package marginalia
  :ensure t
  :custom
  (marginalia-align 'right)
  :init
  (marginalia-mode))

(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package vertico-directory
  :after vertico
  :ensure nil
  ;; More convenient directory navigation commands
  :bind (:map vertico-map
              ("RET" . vertico-directory-enter)
              ("<backspace>" . vertico-directory-delete-word)))

(use-package orderless
  :ensure t
  :init (setq completion-styles '(orderless flex)))

(use-package corfu
  :custom
  (corfu-auto t)          ;; Enable auto completion
  ;; (corfu-separator ?_) ;; Set to orderless separator, if not using space
  (corfu-auto-prefix 2)
  :bind
  ;; Another key binding can be used, such as S-SPC.
  ;; (:map corfu-map ("M-SPC" . corfu-insert-separator))
  :init (global-corfu-mode))

(defun kb/org-mode-setup ()
  (auto-fill-mode)
  (visual-line-mode))

(use-package org
  :ensure t
  :config
  (setq org-ellipsis " ▾")
  :hook (org-mode . kb/org-mode-setup))

(use-package org-bullets
  :ensure t
  :after org
  :hook (org-mode . org-bullets-mode))

(font-lock-add-keywords 'org-mode
                        '(("^ *\\([-]\\) "
                           (0 (prog1 ()(compose-region(match-beginning 1) (match-end 1) "•"))))))

(defun kb/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :ensure t
  :hook (org-mode . kb/org-mode-visual-fill))

(global-set-key (kbd "C-c <left>") 'shrink-window-horizontally)
(global-set-key (kbd "C-c <right>") 'enlarge-window-horizontally)
(global-set-key (kbd "C-c <down>") 'shrink-window)
(global-set-key (kbd "C-c <up>") 'enlarge-window)

(global-set-key (kbd "C-c / ") 'comment-or-uncomment-region)

(global-set-key (kbd "C-c r g") 'rgrep)

(defun my-org-finder ()
  (interactive)
  (ido-find-file-in-dir "~/Documents/org/"))
(global-set-key (kbd "C-c o") 'my-org-finder)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(defalias 'yes-or-no-p 'y-or-n-p)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(windmove-default-keybindings)

(defalias 'list-buffers 'ibuffer)

(setq nav-hidden t)

(add-hook 'write-file-functions 'delete-trailing-whitespace)

(column-number-mode 1)

(save-place-mode 1)

(global-auto-revert-mode 1)

;; TODO set a keybinding for recentf-open-file
(recentf-mode 1)

;; Set reusable font name variables
(defvar kb/fixed-width-font "JetBrains Mono"
  "The font to use for monospaced (fixed width) text.")

(defvar kb/variable-width-font "Iosevka Aile"
  "The font to use for variable-pitch (document) text.")

;; NOTE: These settings might not be ideal for your machine, tweak them as needed!
 (set-face-attribute 'default nil :font kb/fixed-width-font :weight 'light :height 150)
 (set-face-attribute 'fixed-pitch nil :font kb/fixed-width-font :weight 'light :height 160)
 (set-face-attribute 'variable-pitch nil :font kb/variable-width-font :weight 'light :height 1.3)
