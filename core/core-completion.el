(use-package emmet-mode
  :config
  (define-key emmet-mode-keymap (kbd "C-RET") 'emmet-expand-line)
  (setq emmet-expand-jsx-className? t)
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'html-mode-hook 'emmet-mode)
  (add-hook 'web-mode-hook 'emmet-mode)
  ;; (add-hook 'css-mode-hook  'emmet-mode)
  )

(use-package yasnippet
  :init
  :config
  (yas-global-mode 1)
  (yas/initialize)
  (yas/load-directory "~/.emacs.d/snippets"))

(use-package company
  :hook
  (after-init . global-company-mode)
  ;; (web-mode . company-mode)
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-backends
        '((company-files
           company-keywords
           company-capf
           company-yasnippet
           company-css
           company-tern 
           company-go
           )
          (company-abbrev company-dabbrev)))
  )

(use-package lsp-mode
  :commands lsp
  :hook
  ;; (go-mode . lsp)
  ;; (web-mode . lsp)
  (python-mode . lsp)
  )

(use-package lsp-ui
  :defer 1
  :commands lsp-ui-mode
  :config
  (setq lsp-prefer-flymake nil)
  )

(use-package company-lsp
  :commands company-lsp
  :config
  (push 'company-lsp company-backends)
  )

;; (use-package helm-lsp
;;   :defer 1
;;   :commands helm-lsp-workspace-symbol
;;   )

;; (use-package lsp-treemacs
;;   :defer 1
;;   :commands lsp-treemacs-errors-list
;;   )

(use-package company-go
  :config
  (push 'company-go company-backends)
  )

;; for tide exec-path
(use-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  )

;; (use-package tide
;;   :hook
;;   (web-mode . (lambda ()
;;                 (when (string-equal "js" (file-name-extension buffer-file-name))
;;                   (tide-setup))
;;                 ))
;;   ;; (web-mode . tide-format-before-save)
;;   ;; :config
;;   ;; (tide-hl-identifier-mode 1)
;;   )

(provide 'core-completion)
