(use-package helm
  :config
  (require 'helm-config)
  (helm-mode 1)
  ;; (helm-projectile-on)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-x h") 'helm-recentf)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (define-key helm-map (kbd "C-j") 'helm-next-line)
  (define-key helm-map (kbd "C-k") 'helm-previous-line)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (global-set-key (kbd "C-s") 'helm-occur)
  ;; (global-set-key (kbd "C-SPC s") 'helm-grep-do-git-grep)
  (global-set-key (kbd "C-x r") 'helm-show-kill-ring)
  (global-set-key (kbd "C-c g") 'helm-grep-do-git-grep)
  )

(use-package helm-gtags
  :config
  (helm-gtags-mode)
  )

(use-package helm-projectile
  :config
  (global-set-key (kbd "C-c s") 'helm-projectile-grep)
  )

(provide 'core-commands)
