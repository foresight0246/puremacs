(use-package smart-mode-line-atom-one-dark-theme)

(use-package smart-mode-line
  :defer 1
  :config
  (setq sml/theme 'atom-one-dark)
  (sml/setup)
  )

;; (use-package doom-modeline
;;   :hook (after-init . doom-modeline-mode)
;;   :config
;;   ;; (setq doom-modeline-height 18)
;;   (setq doom-modeline-bar-width 2)
;;   )

(provide 'core-modeline)
