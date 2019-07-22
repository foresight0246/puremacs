(use-package google-translate
  :defer 1
  :config
  (setq google-translate-translation-directions-alist '(("en" . "zh-CN") ("zh-CN" . "en")))
  ;; (global-set-key "\C-ct" 'google-translate-at-point)
  ;; (global-set-key "\C-cT" 'google-translate-query-translate)
  (global-set-key "\C-xt" 'google-translate-smooth-translate)
  (setq google-translate-output-destination 'popup)
  )

(provide 'core-auxiliaries)
