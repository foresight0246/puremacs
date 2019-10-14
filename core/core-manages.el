(use-package helm
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
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  )

(use-package helm-gtags
  :config
  (helm-gtags-mode)
  )

(use-package helm-projectile
  ;; :config
  ;; (global-set-key (kbd "M-s") 'helm-projectile-grep)
  )

(use-package projectile
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-SPC") 'projectile-command-map)
  (setq projectile-completion-system 'helm)
  )

;; github
(use-package magit
  :defer 1
  )

;; file explorer
(use-package treemacs
  :defer 1
  :hook
  (treemacs-mode . (lambda ()
                     (linum-mode 0)
                     (setq line-spacing 0.2)
                     ))
  :config
  ;; (setq treemacs-position 'right)
  (setq treemacs-show-hidden-files nil)
  (treemacs-filewatch-mode 1)
  (treemacs-resize-icons 16)

  (defun treemacs-select-window-toggle ()
    (interactive)
    (if (boundp 'treemacs-framelocal-window-prev)
        (if (eq (current-buffer) (treemacs--get-framelocal-buffer))
            (if (member treemacs-framelocal-window-prev (window-list))
                (select-window treemacs-framelocal-window-prev)
              (other-window 1)
              )
          (treemacs-select-window)
          )
      (progn
        (setq treemacs-framelocal-window-prev (selected-window))
        (treemacs-select-window)
        )
      )
    )

  (global-set-key (kbd "C-t") 'treemacs-select-window-toggle)
  (global-set-key (kbd "C-x t") 'treemacs)

  ;; 设置m为treemacs-mode下前缀键
  (define-prefix-command 'm-map)
  (define-key treemacs-mode-map (kbd "m") 'm-map)
  
  (define-key treemacs-mode-map (kbd "C-n") 'treemacs-next-line)
  (define-key treemacs-mode-map (kbd "C-p") 'treemacs-previous-line)
  (define-key treemacs-mode-map (kbd "f") 'treemacs-root-down)
  (define-key treemacs-mode-map (kbd "b") 'treemacs-root-up)
  (define-key treemacs-mode-map (kbd "t") 'treemacs-goto-parent-node)
  (define-key treemacs-mode-map (kbd "o") 'treemacs-RET-action)
  (define-key treemacs-mode-map (kbd "i") 'treemacs-visit-node-vertical-split)
  (define-key treemacs-mode-map (kbd "s") 'treemacs-visit-node-horizontal-split)
  (define-key treemacs-mode-map (kbd "r") 'treemacs-refresh)
  (define-key treemacs-mode-map (kbd "H") 'treemacs-toggle-show-dotfiles)
  (define-key treemacs-mode-map (kbd "+") 'treemacs-create-dir)
  (define-key treemacs-mode-map (kbd "m a") 'treemacs-create-file)
  (define-key treemacs-mode-map (kbd "m d") 'treemacs-delete)
  (define-key treemacs-mode-map (kbd "m c") 'treemacs-copy-file)
  (define-key treemacs-mode-map (kbd "m r") 'treemacs-rename)
  (define-key treemacs-mode-map (kbd "m m") 'treemacs-move-file)
  )

(use-package treemacs-projectile
  :after treemacs projectile
  )

(provide 'core-manages)
