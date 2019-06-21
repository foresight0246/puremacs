(use-package which-key
  :config
  (which-key-mode)
  (which-key-setup-side-window-bottom)
  )

;; (use-package hydra)

;; set keybinding prefix

;; (define-prefix-command 'ctl-v-map)
;; (global-set-key (kbd "C-v") 'ctl-v-map)

;; (define-prefix-command 'ctl-f-map)
;; (global-set-key (kbd "C-f") 'ctl-f-map)

(define-prefix-command 'ctl-SPC-map)
(global-set-key (kbd "C-SPC") 'ctl-SPC-map)

(define-prefix-command 'ctl-w-map)
(global-set-key (kbd "C-w") 'ctl-w-map)

;; set keybinding prefix end

(global-set-key (kbd "C-h") 'backward-char)

(global-set-key (kbd "C-j") 'next-line)

(global-set-key (kbd "C-k") 'previous-line)

(global-set-key (kbd "C-l") 'forward-char)

(global-set-key (kbd "C-f") 'forward-word)

(global-set-key (kbd "C-b") 'backward-word)

(define-key lisp-interaction-mode-map (kbd "C-j") 'next-line)
;; 返回上一步
(global-set-key (kbd "C-u") 'undo)
;; 垂直分割窗口
(global-set-key (kbd "C-w v") 'split-window-horizontally)
;; 水平分割窗口
(global-set-key (kbd "C-w s") 'split-window-vertically)
;; 删除当前窗口
(global-set-key (kbd "C-w k") 'delete-window)
;; 删除其他窗口
(global-set-key (kbd "C-w o") 'delete-other-windows)
;; 跳转到指定行号
(global-set-key (kbd "C-x :") 'goto-line)
;; 删除整行
(global-set-key (kbd "C-M-d") 'kill-whole-line)

(global-set-key (kbd "C-o") 'new-next-line)

(global-set-key (kbd "C-M-o") 'new-previous-line)

(global-set-key (kbd "C-a") 'back-to-indentation)

(global-set-key (kbd "C-M-a") 'beginning-of-buffer)

(global-set-key (kbd "C-M-e") 'end-of-buffer)
;; 复制
(global-set-key (kbd "C-y") 'kill-ring-save-region-or-line)
;; 粘贴
(global-set-key (kbd "C-p") 'yank)
;; 剪切
(global-set-key (kbd "C-d") 'delete-char-or-region)

(global-set-key (kbd "C-v") 'set-mark-command)

(global-set-key (kbd "C-\\") 'indent-region)

(global-set-key (kbd "C-SPC t") '(lambda () (interactive) (recenter-top-bottom 0)))

(global-set-key (kbd "C-SPC b") '(lambda () (interactive) (recenter-top-bottom -1)))

(global-set-key (kbd "C-SPC C-SPC") 'scroll-to-middle)

(global-set-key (kbd "C-r") 'universal-argument)

;; defun region

(defun delete-char-or-region (beg end)
  (interactive (list (point) (mark)))
  (if (region-active-p)
      (kill-region beg end)
    (delete-char 1)
    )
  )

(defun new-next-line ()
  (interactive)
  (progn
    (move-end-of-line 1)
    (newline-and-indent)
    )
  )

(defun new-previous-line ()
  (interactive)
  (progn
    (move-beginning-of-line 1)
    (newline-and-indent)
    (previous-line)
    )
  )

(defun scroll-to-middle ()
  (interactive)
  (let ((count (window-height)))
    (recenter-top-bottom (/ count 2))
    )
  )

(defun kill-ring-save-region-or-line (beg end)
  (interactive (list (point) (mark)))
  (if (region-active-p)
      (kill-ring-save beg end)
    (progn
      (set-mark-command (back-to-indentation))
      (kill-ring-save (region-beginning) (line-end-position))
      )
    )
  )

;; defun region end

(provide 'core-keybindings)
