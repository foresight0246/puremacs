(use-package all-the-icons)

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold nil
        doom-themes-enable-italic nil)
  (doom-themes-org-config)
  ;; (doom-themes-treemacs-config)
  ;; (doom-themes-neotree-config)

  ;; (load-theme 'doom-nord t)
  ;; (load-theme 'doom-opera)
  ;; (load-theme 'doom-opera-light t)
  ;; (load-theme 'doom-spacegrey t)
  ;; (load-theme 'doom-one t)
  ;; (load-theme 'doom-one-light)
  ;; (load-theme 'doom-molokai t)
  ;; (load-theme 'doom-solarized-light t)
  ;; (load-theme 'doom-dracula)
  (load-theme 'doom-nova)
  ;; (load-theme 'doom-peacock)
  ;; (load-theme 'doom-vibrant)
  ;; (load-theme 'doom-city-lights)
  )

;; (use-package solarized-theme
;;   :config
;;   (load-theme 'solarized-light t)
;;   )

(provide 'core-themes)
