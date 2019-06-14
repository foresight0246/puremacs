(use-package smart-mode-line-atom-one-dark-theme)

(use-package smart-mode-line
  :config
  (setq sml/theme 'atom-one-dark)
  (sml/setup)
  )

;; (use-package doom-modeline
;;   :hook (after-init . doom-modeline-mode)
;;   :config
;;   (setq doom-modeline-height 25)
;;   (setq doom-modeline-bar-width 3)
;;   )

;; (use-package telephone-line
;;   :hook (after-init . telephone-line-mode)
;;   :config
;;   (setq telephone-line-lhs
;;         '((evil   . (telephone-line-evil-tag-segment))
;;           (accent . (telephone-line-vc-segment
;;                      telephone-line-erc-modified-channels-segment
;;                      telephone-line-process-segment))
;;           (nil    . (telephone-line-minor-mode-segment
;;                      telephone-line-buffer-segment))))
;;   (setq telephone-line-rhs
;;         '((nil    . (telephone-line-misc-info-segment))
;;           (accent . (telephone-line-major-mode-segment))
;;           (evil   . (telephone-line-airline-position-segment))))

;;   (setq telephone-line-height 22
;;         telephone-line-evil-use-short-tag t)
;;   )

(provide 'core-modeline)
