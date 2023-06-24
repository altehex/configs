;; set the mouse wheel to scroll buffer
(require 'xt-mouse)
(xterm-mouse-mode 1)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)

;; speedbar
(require 'sr-speedbar)
(global-set-key (kbd "C-x a") 'sr-speedbar-toggle)
