;; Run emacs as a server
(require 'server)
(unless (server-running-p)
  (server-start))

;; PACKAGE SETTINGS
;;-------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))
(unless (package-installed-p 'use-package)
    (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; ADD SETTINGS FILES
;;-------------------------
(add-to-list 'load-path "~/.emacs.d/custom")

(load-file "~/.emacs.d/my-settings/company.el")
(load-file "~/.emacs.d/my-settings/frame-title.el");9u
(load-file "~/.emacs.d/my-settings/helm.el")
(load-file "~/.emacs.d/my-settings/helm-gtags.el")
(load-file "~/.emacs.d/my-settings/helm-swoop.el")
(load-file "~/.emacs.d/my-settings/scratch.el")
(load-file "~/.emacs.d/my-settings/speedbar.el")
(load-file "~/.emacs.d/my-settings/theme.el")

;; XTERM MOUSE MODE
;;-------------------------
(require 'xt-mouse)
(xterm-mouse-mode 1)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'scroll-up-line)

;; INDENTATION
;;-------------------------
(setq-default electric-indent-inhibit t)

;; KEYS
;;-------------------------
(global-set-key (kbd "C-x <f10>") #'toggle-menu-bar-mode-from-frame)

;; TERMINAL EMULATOR
;;-------------------------
(split-window-below 45)
(other-window 2)
(term "/bin/fish")
(switch-to-buffer "*terminal*")
(other-window 1)

;; MISC
;;-------------------------
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(indent-tabs-mode  0)
(menu-bar-mode     0)
(tab-bar-mode      1)
(tool-bar-mode     0)

(defalias (function yes-or-no-p) (function y-or-n-p))

(defadvice save-buffers-kill-terminal (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (cl-letf (((symbol-function #'process-list) (lambda ())))
    ad-do-it))

;; CUSTOM
;;-------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(helm-gtags-prefix-key "")
 '(helm-gtags-suggested-key-mapping t)
 '(package-selected-packages
   '(parinfer-rust-mode zygospore yasnippet ws-butler volatile-highlights vdiff-magit use-package undo-tree rust-mode projectile-speedbar iedit helm-xref helm-swoop helm-projectile helm-gtags function-args flycheck-rust flycheck-clang-analyzer dtrt-indent company comment-dwim-2 clean-aindent-mode clang-capf cargo anzu))
 '(warning-suppress-types '((comp) (comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
