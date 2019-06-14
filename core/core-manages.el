(use-package projectile
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-M-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c f") 'projectile-find-file)
  (setq projectile-completion-system 'helm)
  )

;; (use-package treemacs
;;   :hook
;;   (treemacs-mode . (lambda ()
;;                      (linum-mode 0)
;;                      (setq line-spacing 0.2)
;;                      ))
;;   :config
;;   (setq treemacs-position 'right)
;;   (setq treemacs-show-hidden-files nil)
;;   (treemacs-filewatch-mode 1)

;;   (defun treemacs-select-window-toggle ()
;;     (interactive)
;;     (if (boundp 'treemacs-framelocal-window-prev)
;;         (if (eq (current-buffer) (treemacs--get-framelocal-buffer))
;;             (if (member treemacs-framelocal-window-prev (window-list))
;;                 (select-window treemacs-framelocal-window-prev)
;;               (other-window 1)
;;               )
;;           (treemacs-select-window)
;;           )
;;       (progn
;;         (setq treemacs-framelocal-window-prev (selected-window))
;;         (treemacs-select-window)
;;         )
;;       )
;;     )
;;   (global-set-key (kbd "C-SPC") 'treemacs-select-window-toggle)
;;   (define-key treemacs-mode-map (kbd "j") 'next-line)
;;   (define-key treemacs-mode-map (kbd "k") 'previous-line)
;;   (define-key treemacs-mode-map (kbd "h") 'treemacs-root-up)
;;   (define-key treemacs-mode-map (kbd "l") 'treemacs-root-down)
;;   (define-key treemacs-mode-map (kbd "o") 'treemacs-RET-action)
;;   (define-key treemacs-mode-map (kbd "v") 'treemacs-peek)
;;   (define-key treemacs-mode-map (kbd "i") 'treemacs-visit-node-vertical-split)
;;   (define-key treemacs-mode-map (kbd "s") 'treemacs-visit-node-horizontal-split)
;;   (define-key treemacs-mode-map (kbd "p") 'treemacs-goto-parent-node)
;;   (define-key treemacs-mode-map (kbd "r") 'treemacs-refresh)
;;   (define-key treemacs-mode-map (kbd "H") 'treemacs-toggle-show-dotfiles)
;;   (define-prefix-command 'treemacs-prefix-m-map)
;;   (define-key treemacs-mode-map (kbd "m") 'treemacs-prefix-m-map)
;;   (define-key treemacs-mode-map (kbd "m n") 'treemacs-create-dir)
;;   (define-key treemacs-mode-map (kbd "m a") 'treemacs-create-file)
;;   (define-key treemacs-mode-map (kbd "m d") 'treemacs-delete)
;;   (define-key treemacs-mode-map (kbd "m c") 'treemacs-copy-file)
;;   (define-key treemacs-mode-map (kbd "m r") 'treemacs-rename)
;;   (define-key treemacs-mode-map (kbd "m m") 'treemacs-move-file)
;;   )

;; (require 'treemacs-icons-theme)

;; (use-package treemacs-projectile
;;   :after treemacs projectile
;;   )

;; (use-package neotree
;;   :init
;;   :config
;;   (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;;   ;; classic(default) ascii arrow icons nerd
;;   ;; (setq neo-theme 'nerd)
;;   (setq neo-window-width 35)
;;   ;; (setq neo-window-position 'right)
;;   (add-hook 'neotree-mode-hook
;;             (lambda ()
;;               ;; (define-key evil-normal-state-local-map (kbd "o") 'neotree-enter)
;;               ;; (define-key evil-normal-state-local-map (kbd "g g") 'beginning-of-buffer)
;;               ;; (define-key evil-normal-state-local-map (kbd "v") 'neotree-quick-look)
;;               ;; (define-key evil-normal-state-local-map (kbd "r") 'neotree-refresh)
;;               ;; (define-key evil-normal-state-local-map (kbd "H") 'neotree-hidden-file-toggle)
;;               ;; (define-key evil-normal-state-local-map (kbd "?") 'describe-mode)
;;               ;; (define-key evil-normal-state-local-map (kbd "i") #'neotree-enter-horizontal-split)
;;               ;; (define-key evil-normal-state-local-map (kbd "s") #'neotree-enter-vertical-split)
;;               ;; (define-key evil-normal-state-local-map (kbd "p") 'neotree-select-up-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "P") 'neotree-select-down-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "b") 'neotree-select-next-sibling-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "B") 'neotree-select-previous-sibling-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "C") 'neotree-change-root)
;;               ;; (define-key evil-normal-state-local-map (kbd "m a") 'neotree-create-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "m d") 'neotree-delete-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "m c") 'neotree-copy-node)
;;               ;; (define-key evil-normal-state-local-map (kbd "m r") 'neotree-rename-node)
;;               ))
;;   ;; (evil-leader/set-key "t"  'neotree-toggle)
;;   (setq inhibit-compacting-font-caches t)
;;   )

(provide 'core-manages)
