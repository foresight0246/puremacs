(use-package emmet-mode
  :config
  (define-key emmet-mode-keymap (kbd "C-RET") 'emmet-expand-line)
  (define-key emmet-mode-keymap (kbd "C-j") 'next-line)
  (setq emmet-expand-jsx-className? t)
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'html-mode-hook 'emmet-mode)
  (add-hook 'web-mode-hook 'emmet-mode)
  (add-hook 'css-mode-hook  'emmet-mode)
  )

(use-package yasnippet
  :init
  :config
  (yas-global-mode 1)
  (yas/initialize)
  (yas/load-directory "~/.emacs.d/snippets"))

;; (use-package ycmd
;;   :hook
;;   (after-init . global-ycmd-mode)
;;   )

(use-package company
  :hook
  (after-init . global-company-mode)
  ;; (web-mode . company-mode)
  :config
  (define-key company-active-map (kbd "C-j") 'company-select-next)
  (define-key company-active-map (kbd "C-k") 'company-select-previous)
  (define-key company-active-map (kbd "C-h") 'company-previous-page)
  (define-key company-active-map (kbd "C-l") 'company-next-page)
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
  :commands lsp-ui-mode
  :config
  (setq lsp-prefer-flymake nil)
  )

(use-package company-lsp
  :commands company-lsp
  :config
  (push 'company-lsp company-backends)
  )

(use-package helm-lsp
  :commands helm-lsp-workspace-symbol
  )

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list
  )

(use-package company-go
  :config
  (push 'company-go company-backends)
 )

(use-package tide
  :hook
  (web-mode . tide-setup)
  (web-mode . tide-format-before-save)
  :config
  ;; (tide-hl-identifier-mode 1)
  )

(provide 'core-completion)
