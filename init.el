(org-babel-load-file "~/.emacs.d/config.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(connection-local-criteria-alist
   '(((:application eshell)
      eshell-connection-default-profile)))
 '(connection-local-profile-alist
   '((eshell-connection-default-profile
      (eshell-path-env-list))))
 '(custom-safe-themes
   '("d395c1793e0d64797d711c870571a0033174ca321ed48444efbe640bf692bf4f" "f82e68d489e6c21c9552c4e8e35a03d126d9eba632a8e7b4f9329d1374b4a19c" default))
 '(package-selected-packages
   '(go-fill-struct editorconfig dockerfile-mode protobuf-mode git-link modus-themes auto-compile swift-mode yasnippet-snippets zenburn-theme flycheck-swift multiple-cursors typescript-mode visual-fill-column corfu pbcopy tree-sitter-langs vertico yaml-mode use-package projectile magit lsp-ui git-gutter+ go-mode org-bullets doom-themes orderless rainbow-delimiters marginalia web-mode org-present)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
