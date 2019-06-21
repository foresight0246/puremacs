(defun display-startup-echo-area-message ()
  "Display startup echo area message."
  (message "Initialized in %s" (emacs-init-time)))

(add-hook 'after-init-hook 'display-startup-echo-area-message)

;; (use-package dashboard
;;   :config
;;   (dashboard-setup-startup-hook)
;;   (setq dashboard-center-content t)
;;   (setq dashboard-show-shortcuts nil)
;;   (setq dashboard-items '((recents  . 10)
;;                           (bookmarks . 10)
;;                           (projects . 5)
;;                           (agenda . 5)
;;                           (registers . 5)))
;;   (setq dashboard-set-heading-icons t)
;;   (setq dashboard-set-file-icons t)
;;   )

(provide 'core-startup)
