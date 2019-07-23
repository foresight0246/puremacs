(use-package helm
  :defer 1
  :config
  (require 'helm-config)
  (helm-mode 1)
  ;; (helm-projectile-on)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  (global-set-key (kbd "C-x C-h") 'helm-recentf)
  (global-set-key (kbd "M-x") 'helm-M-x)
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (global-set-key (kbd "C-s") 'helm-occur)
  (global-set-key (kbd "C-x r") 'helm-show-kill-ring)
  ;; (global-set-key (kbd "C-c g") 'helm-grep-do-git-grep)

  (define-key helm-map (kbd "C-j") 'helm-next-line)
  (define-key helm-map (kbd "C-k") 'helm-previous-line)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  )

(use-package helm-gtags
  :defer 1
  :config
  (helm-gtags-mode)
  )

(use-package helm-projectile
  :defer 1
  :config
  (global-set-key (kbd "M-s") 'helm-projectile-grep)
  )

(use-package projectile
  :defer 1
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-SPC") 'projectile-command-map)
  (setq projectile-completion-system 'helm)
  )

(use-package magit
  :defer 1
  :config
  (define-key magit-mode-map (kbd "C-j") 'next-line)
  (define-key magit-file-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-hunk-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-branch-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-commit-message-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-commit-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-module-commit-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-remote-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-staged-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-stash-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-stashes-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-unmerged-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-tag-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-unpulled-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-unpushed-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-unstaged-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-untracked-section-map (kbd "C-j") 'magit-next-line)
  (define-key magit-worktree-section-map (kbd "C-j") 'magit-next-line)
  )

(provide 'core-manages)
