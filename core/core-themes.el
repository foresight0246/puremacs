(use-package all-the-icons)

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold nil
        doom-themes-enable-italic nil)
  ;; (doom-themes-treemacs-config)
  ;; (doom-themes-neotree-config)

  ;; (load-theme 'doom-nord t)
  ;; (load-theme 'doom-opera)
  ;; (load-theme 'doom-opera-light t)
  ;; (load-theme 'doom-spacegrey t)
  (load-theme 'doom-one t)
  ;; (load-theme 'doom-molokai t)
  ;; (load-theme 'doom-solarized-light t)
  ;; (load-theme 'doom-dracula)
  ;; (load-theme 'doom-nova)
  ;; (load-theme 'doom-peacock)
  )

;; (use-package solarized-theme
;;   :config
;;   (load-theme 'solarized-light t)
;;   )

(provide 'core-themes)
