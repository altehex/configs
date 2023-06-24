(add-hook 'emacs-startup-hook
  (defun scratch-buffer-messsage ()
    (with-current-buffer "*scratch*"
      (let ((scratch-buf-last-char (point-max)))
	(goto-char scratch-buf-last-char)
	(fancy-splash-insert
	 :link (list "File" (lambda   (_button) (call-interactively #'find-file))
		     "...")
	 " "
	 :link (list "Dired" (lambda   (_button) (dired (getenv "PWD")))
		     "...")
	 " "
	 :link (list "Recent" (lambda (_button) (helm-recentf))))
	(comment-region scratch-buf-last-char (point))
	(newline)
	(goto-char (point-max))
	(set-buffer-modified-p nil)))))
