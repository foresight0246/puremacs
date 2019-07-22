(use-package avy
  :defer 1
  :config
  (define-key input-decode-map (kbd "C-i") (kbd "H-i"))
  (global-set-key (kbd "H-i") 'avy-goto-char-2)
  )

(use-package ace-window
  :defer 1
  :config
  (global-set-key (kbd "C--") 'ace-window)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  )

(provide 'core-jump)
