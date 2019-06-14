(use-package evil
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-h") 'backward-char)
  (define-key evil-insert-state-map (kbd "C-j") 'next-line)
  (define-key evil-insert-state-map (kbd "C-k") 'previous-line)
  (define-key evil-insert-state-map (kbd "C-l") 'forward-char)
  (define-key evil-insert-state-map (kbd "C-a") 'move-beginning-of-line)
  (define-key evil-insert-state-map (kbd "C-e") 'move-end-of-line)
  (define-key evil-normal-state-map (kbd "C-a") 'evil-first-non-blank)
  (define-key evil-normal-state-map (kbd "C-e") 'evil-end-of-line)
  )

(use-package evil-leader
  :config
  (global-evil-leader-mode)
  (evil-leader/set-leader "<SPC>")
  (setq evil-leader/no-prefix-mode-rx '("magit-.*-mode" "gnus-.*-mode"))
  (evil-leader/set-key
    "f f" 'helm-find-files
    ;; file history
    "f h" 'helm-recentf
    "w o" 'delete-other-windows
    "w d" 'delete-window
    "w s" 'evil-window-split
    "w v" 'evil-window-vsplit
    ;; register mark point
    "r m" 'point-to-register
    "r j" 'jump-to-register
    ;; bookmark
    "m m" 'bookmark-set
    "m l" 'bookmark-bmenu-list
    "m s" 'helm-bookmarks
    "m d" 'bookmark-delete
    ;; buffer
    "b b" 'switch-to-buffer
    "b c" 'clean-buffer-list
    "b k" 'kill-this-buffer
    "b l" 'list-buffers
    "s" 'save-buffer
    )
  )

(use-package evil-nerd-commenter
  :config
  (evil-leader/set-key
    "cc" 'evilnc-comment-or-uncomment-lines
    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
    "cp" 'evilnc-comment-or-uncomment-paragraphs
    "ci" 'comment-or-uncomment-region
    "\\" 'evilnc-comment-operator
    )
  )

(provide 'core-evil)
