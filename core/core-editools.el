(use-package expand-region
  :config
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "C-v w") 'er/mark-word)
  (global-set-key (kbd "C-v f") 'er/mark-defun)
  (global-set-key (kbd "C-v h") 'mark-whole-buffer)
  (global-set-key (kbd "C-v p") 'er/mark-inside-pairs)
  (global-set-key (kbd "C-v q") 'er/mark-inside-quotes)
  )

(use-package evil-nerd-commenter
  :config
  (global-set-key (kbd "C-/") 'evilnc-comment-or-uncomment-lines)
  )

(use-package multiple-cursors
  :config
  (global-set-key (kbd "C-M-j") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-M-k") 'mc/mark-previous-like-this)
  )

(provide 'core-editools)
