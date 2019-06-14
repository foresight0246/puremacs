(eval-after-load 'treemacs
  (lambda ()
    (unless (require 'all-the-icons nil t)
      (error "all-the-icons isn't installed")
      )

    (treemacs-resize-icons 18)

    (setq treemacs-icon-root-png
          (concat " "
           (all-the-icons-octicon "repo" :v-adjust -0.1 :height 1.2
                                  :face 'font-lock-string-face)
           " "))

    ;; (setq treemacs-icon-root-png
    ;;       (concat " " (all-the-icons-octicon "repo" :v-adjust -0.1 :height 1.2
    ;;                                          :face 'font-lock-string-face)
    ;;               " ")

    ;;       treemacs-icon-tag-open-png
    ;;       (all-the-icons-octicon "chevron-down" :v-adjust 0.1)
    ;;       treemacs-icon-tag-closed-png
    ;;       (all-the-icons-octicon "chevron-right" :v-adjust 0.1)

    ;;       treemacs-indentation-string "  "
    ;;       treemacs-indentation 1

    ;;       treemacs-icon-open-png
    ;;       (concat (all-the-icons-octicon "file-directory"
    ;;                                      :v-adjust 0
    ;;                                      )
    ;;               " ")
    ;;       treemacs-icon-closed-png
    ;;       (concat (all-the-icons-octicon "file-directory"
    ;;                                      :v-adjust 0
    ;;                                      ;; :face '(:inherit font-lock-doc-face :slant normal)
    ;;                                      )
    ;;               " ")

    ;;       treemacs-icon-tag-node-open-png
    ;;       (concat (all-the-icons-octicon "chevron-down"  :height 0.75 :face 'font-lock-keyword-face)
    ;;               "\t")
    ;;       treemacs-icon-tag-node-closed-png
    ;;       (concat (all-the-icons-octicon "chevron-right" :height 0.9  :face 'font-lock-keyword-face)
    ;;               "\t")
    ;;       treemacs-icon-tag-leaf-png "- ")

    ;; (defun treemacs-icons-hash-set (expend-name)
    ;;   (treemacs-define-custom-icon (all-the-icons-icon-for-file (concat "foo." expend-name)) expend-name)
    ;;   )

    ;; (defun treemacs-icons-hash-map (k v)
    ;;   (treemacs-icons-hash-set k)
    ;;   )

    ;; (maphash 'treemacs-icons-hash-map treemacs-icons-hash)

    ;; (treemacs-icons-hash-set "less")
    ;; (treemacs-icons-hash-set "ejs")
    ;; (treemacs-icons-hash-set "txt")

    ;; (setq treemacs-icon-fallback (concat (treemacs-icons-hash-set "null") " "))

    ;; (setq treemacs-icons-hash (make-hash-table :size 200 :test #'equal))
    ;;       treemacs-icon-fallback (concat (all-the-icons-octicon "file-code" :v-adjust 0) " ")
    ;;       treemacs-icon-text     treemacs-icon-fallback)
    )
  )

(provide 'treemacs-icons-theme)
