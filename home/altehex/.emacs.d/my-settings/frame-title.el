(setq-default frame-title-format
 '(:eval (concat (when (file-remote-p default-directory)
		   (let ((user (file-remote-p default-directory 'user))
			 (host (file-remote-p default-directory 'host)))
		     (format "%s@%s:" user host)))
		 (or buffer-file-truename dired-directory (buffer-name)))))
