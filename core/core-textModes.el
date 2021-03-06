(use-package web-mode
  :defer 1
  :config
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.less?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.json?\\'" . web-mode))

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)

  (add-hook 'web-mode-hook
            (lambda ()
              ;; short circuit js mode and just do everything in jsx-mode
              (if (equal web-mode-content-type "javascript")
                  (web-mode-set-content-type "jsx")
                (message "now set to: %s" web-mode-content-type))
              (setq web-mode-enable-auto-pairing nil)
              ))
  )

;; web mode end------------------------------------------------------------------------------------------------

(use-package go-mode
  :defer 1
  :hook
  (before-save . gofmt-before-save)
  (go-mode . (lambda () (setq tab-width 2)))
  :config
  (add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
  (when (executable-find "goimports")
    (setq gofmt-command "goimports"))
  )

;; go mode end------------------------------------------------------------------------------------------------

(use-package elpy
  :init
  (elpy-enable)
  :config
  (set-variable 'python-indent-offset 2)
  (set-variable 'python-indent-guess-indent-offset nil)
  )


(provide 'core-textModes)
