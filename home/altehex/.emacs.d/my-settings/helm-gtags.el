;;%%%%%%%%%%%%%%%%%%
;; HELM GTAGS
;;%%%%%%%%%%%%%%%%%
(require 'helm-gtags)

(setq
 helm-gtags-ignore-case           t
 helm-gtags-auto-update           t
 helm-gtags-use-input-at-cursor   t
 helm-gtags-pulse-at-cursor       t
 helm-gtags-prefix-key            "\C-cg"
 helm-gtags-suggested-key-mapping t)

(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook      'helm-gtags-mode)
(add-hook 'c++-mode-hook    'helm-gtags-mode)
(add-hook 'asm-mode-hook    'helm-gtags-mode)

;;----------------
(helm-mode 1)(require 'helm-gtags)
(custom-set-variables
 '(helm-gtags-prefix-key "\C-t")
 '(helm-gtags-suggested-key-mapping t))

