(setq electric-pair-inhibit-predicate 'electric-pair-conservative-inhibit)
(electric-pair-mode 1)

(use-package rainbow-delimiters
  :defer 1
  :hook
  (prog-mode . rainbow-delimiters-mode)
  )

(provide 'core-matching)
