(setq org-todo-keywords
      '((sequence
         "TODO"
         "WAITING"
         "IN-PROGRESS"
         "|"
         "DONE"
         "CANCELED"
         ))
      )

(setq org-todo-keyword-faces
      '(
        ("TODO" . "org-warning")
        ("WAITING" . "magenta")
        ("IN-PROGRESS" . "orange")
        ("CANCELED" . "red")
        ("DONE" . "green")
        )
      )

;; (use-package org-bullets
;;   :hook
;;   (org-mode . org-bullets-mode)
;;   )

(add-hook 'org-mode-hook
          (lambda ()
            (setq enable-local-eval t)
            (setq enable-local-variables :all)
            (setq org-startup-indented t)
            (setq org-hide-emphasis-markers t)
            (setq truncate-lines nil)
            (setq org-src-fontify-natively t)
            (setq org-log-done 'time)
            (turn-on-visual-line-mode)
            
            ;; (define-key org-mode-map (kbd "C-j") 'next-line)
            ;; (define-key org-mode-map (kbd "C-k") 'previous-line)
            (define-key org-mode-map (kbd "M-c") 'kill-ring-save-region-or-line)
            (define-key org-mode-map (kbd "M-v") 'yank)
            (define-key org-mode-map (kbd "C-a") 'back-to-indentation)
            (define-key org-mode-map (kbd "C-SPC") 'org-todo)
            )
          )

(provide 'core-org)
