;; Install use-package if necessary
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Enable use-package
(eval-when-compile
  (require 'use-package))

;; Packages
(use-package magit
  :ensure t
  :bind ("C-c m" . magit-status))

(use-package multiple-cursors
  :ensure t)

(use-package markdown-mode
  :ensure t)

(use-package git-gutter+
  :ensure t)

(use-package rainbow-delimiters
  :ensure t
  :init

  (add-hook 'web-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'ruby-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode #'rainbow-delimiters-mode))

(use-package yaml-mode
  :ensure t)

(use-package zenburn-theme
  :ensure t)

(use-package swift-mode
  :ensure t)

(use-package web-mode
  :ensure t
  :init

  (add-hook 'css-mode-hook  (setq css-indent-offset 2))
  (add-hook 'web-mode-hook (setq web-mode-code-indent-offset 2))
  (add-hook 'web-mode-hook (setq web-mode-markup-indent-offset 2))
  (add-hook 'web-mode-hook (setq web-mode-css-indent-offset 2)))

(use-package flycheck
  :ensure t)

(use-package flycheck-swift
  :ensure t
  :init

  (add-hook 'flycheck-mode-hook #'flycheck-swift-setup))

(use-package pbcopy
  :ensure t)
