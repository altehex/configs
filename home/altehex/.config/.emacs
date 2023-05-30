(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'load-path "~/.emacs.d/cl-libify")

(require 'cl-libify)
(require 'color-theme)
(require 'font-lock)
(require 'server)

(unless (server-running-p)
  (server-start))

(defun color-theme-init()
  (color-theme-initialize)
  (setq color-theme-is-global t)
  (color-theme-charcoal-black))

(global-font-lock-mode             t)
(setq font-lock-maximum-decoration t)

(custom-set-variables
 '(package-selected-packages '(cl-lib xelb markdown-mode))
 '(warning-suppress-types '((auto-save) (aut))))
(custom-set-faces
 ;; ...
 )
