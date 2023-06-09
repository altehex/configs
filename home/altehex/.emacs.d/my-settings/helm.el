(require 'helm)
(require 'helm-config)

;; AUTORESIZE
;;----------------
(setq helm-autoresize-max-height 0
      helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

;; FUZZY MATCH
;;-----------------
(setq helm-apropos-fuzzy-match     t
      helm-buffers-fuzzy-matching  t
      helm-lisp-fuzzy-completion   t
      helm-M-x-fuzzy-match         t
      helm-recentf-fuzzy-match     t)

;; KEY BINDINGS
;;-----------------
(global-set-key (kbd "C-c h")   'helm-command-prefix)
(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "M-y")     'helm-show-kill-ring)
(global-set-key (kbd "C-x b")   'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-s o")   'helm-occur)
(global-set-key (kbd "C-h a")   'helm-apropos)
(global-set-key (kbd "C-x r")   'helm-recentf)

;; MAN PAGES
;;------------------
(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)

;; MISC
;;-------------------
(setq helm-split-window-in-side-p            t
      helm-move-to-line-cycle-in-source      t
      helm-ff-search-library-in-sexp         t
      helm-scroll-amount                     8
      helm-ff-file-name-history-use-recentf  t
      helm-echo-input-in-header-line         t)


