;;; yasnippet-bundle-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (yas/minor-mode yas/root-directory) "yasnippet-bundle"
;;;;;;  "yasnippet-bundle.el" (19350 26289))
;;; Generated autoloads from yasnippet-bundle.el

(defvar yas/root-directory nil "\
Root directory that stores the snippets for each major mode.

If you set this from your .emacs, can also be a list of strings,
for multiple root directories. If you make this a list, the first
element is always the user-created snippets directory. Other
directories are used for bulk reloading of all snippets using
`yas/reload-all'")

(custom-autoload (quote yas/root-directory) "yasnippet-bundle" nil)

(autoload (quote yas/minor-mode) "yasnippet-bundle" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, the `tas/trigger-key' key expands
snippets of code depending on the mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

You can customize the key through `yas/trigger-key'.

Key bindings:
\\{yas/minor-mode-map}

\(fn &optional ARG)" t nil)
(require 'yasnippet-bundle)

;;;***

;;;### (autoloads nil nil ("yasnippet-bundle-pkg.el") (19350 26289
;;;;;;  999574))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; yasnippet-bundle-autoloads.el ends here
