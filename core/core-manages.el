(use-package projectile
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-M-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c f") 'projectile-find-file)
  (setq projectile-completion-system 'helm)
  )

(use-package magit
  ;; :hook
  ;; (magit-mode . (lambda ()
  ;;                 (define-key magit-mode-map (kbd "C-j") 'next-line)
  ;;                 ))
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
