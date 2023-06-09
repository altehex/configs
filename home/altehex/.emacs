(require 'server)

(unless (server-running-p)
  (server-start))

(electric-indent-mode nil)

(xterm-mouse-mode 1)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)

(custom-set-variables
 '(package-selected-packages '(cl-lib xelb markdown-mode))
 '(warning-suppress-types '((auto-save) (aut))))
(custom-set-faces
 ;; ...
 )
