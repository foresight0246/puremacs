;; (use-package which-key
;;   :config
;;   (which-key-mode)
;;   (which-key-setup-side-window-bottom)
;;   )

;; (use-package hydra)

;; set keybinding prefix ---------------------------------------

(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-z") 'ctl-z-map)

;; (define-prefix-command 'ctl-SPC-map)
;; (global-set-key (kbd "C-SPC") 'ctl-SPC-map)

(define-prefix-command 'ctl-w-map)
(global-set-key (kbd "C-w") 'ctl-w-map)

;; set keybinding prefix end -----------------------------------

;; (global-set-key (kbd "C-h") 'backward-char)
;; (global-set-key (kbd "C-j") 'next-line)
;; (global-set-key (kbd "C-k") 'previous-line)
;; (global-set-key (kbd "C-l") 'forward-char)
;; (global-set-key (kbd "C-f") 'forward-word)
;; (global-set-key (kbd "C-b") 'backward-word)
;; (define-key lisp-interaction-mode-map (kbd "C-j") 'next-line)

;; prefix(Ctrl) ------------------------------------------------

;; 返回上一步
(global-set-key (kbd "C-u") 'undo)
;; 垂直分割窗口
(global-set-key (kbd "C-w v") 'split-window-horizontally)
;; 水平分割窗口
(global-set-key (kbd "C-w s") 'split-window-vertically)
;; 删除其他窗口
(global-set-key (kbd "C-w o") 'delete-other-windows)
;; 当前行滚动到窗口 top
(global-set-key (kbd "C-w t") '(lambda () (interactive) (recenter-top-bottom 0)))
;; 当前行滚动到窗口 bottom
(global-set-key (kbd "C-w b") '(lambda () (interactive) (recenter-top-bottom -1)))
;; 当前行滚动到窗口 middle
(global-set-key (kbd "C-w SPC") 'scroll-to-middle)
;; 跳转到指定行号
(global-set-key (kbd "C-x :") 'goto-line)
(global-set-key (kbd "C-o") 'new-next-line)
(global-set-key (kbd "C-a") 'back-to-indentation)
;; 剪切
(global-set-key (kbd "C-d") 'delete-char-or-region)
(global-set-key (kbd "C-v") 'set-mark-command)
(global-set-key (kbd "C-\\") 'indent-region)
(global-set-key (kbd "C-r") 'universal-argument)

;; 代码折叠 start --------------------------------------------------------------

(global-set-key (kbd "C-z h") 'hs-hide-all)
(global-set-key (kbd "C-z s") 'hs-show-all)
(global-set-key (kbd "C-z b") 'hs-toggle-hiding)
(global-set-key (kbd "C-z l") 'hs-hide-level)

;; 代码折叠 end ----------------------------------------------------------------

;; 历史文件
;; (global-set-key (kbd "C-x C-h") 'recentf-open-files)
;; (global-set-key (kbd "C-/") 'comment-line-or-region)

;; prefix(M) ------------------------------------------------------------------

;; 向下翻页
(global-set-key (kbd "M-n") 'scroll-up-command)
;; 向上翻页
(global-set-key (kbd "M-p") 'scroll-down-command)
;; 删除当前窗口
(global-set-key (kbd "M-w") 'delete-window)

(global-set-key (kbd "M-o") 'new-previous-line)

(global-set-key (kbd "M-a") 'beginning-of-buffer)

(global-set-key (kbd "M-e") 'end-of-buffer)
;; 复制
(global-set-key (kbd "M-c") 'kill-ring-save-region-or-line)
;; 粘贴
(global-set-key (kbd "M-v") 'yank)
;; 删除整行
(global-set-key (kbd "M-d") 'delete-whole-line)
;; 保存
(global-set-key (kbd "M-s") 'save-buffer)

;; defun ---------------------------------------------------------------------
(defun mark-whole-line ()
  "选中整个文档"
  (interactive)
  (set-mark-command (back-to-indentation))
  (end-of-line)
  )

(defun delete-char-or-region (beg end)
  "删除字符或者选中区域"
  (interactive (list (point) (mark)))
  (if (region-active-p)
      (progn
        (kill-region beg end)
        (delete-blank-lines)
        )
    (delete-char 1)
    )
  )

(defun delete-whole-line ()
  "删除行并自动删除空行"
  (interactive)
  (set-mark-command (back-to-indentation))
  (end-of-line)
  (kill-region (region-beginning) (region-end))
  (delete-blank-lines)
  )

(defun new-next-line ()
  "任意位置向下新建行"
  (interactive)
  (progn
    (move-end-of-line 1)
    (newline-and-indent)
    )
  )

(defun new-previous-line ()
  "任意位置向下新建行"
  (interactive)
  (progn
    (move-beginning-of-line 1)
    (newline-and-indent)
    (previous-line)
    )
  )

(defun scroll-to-middle ()
  "当前行滚动到屏幕中间"
  (interactive)
  (let ((count (window-height)))
    (recenter-top-bottom (/ count 2))
    )
  )

(defun kill-ring-save-region-or-line (beg end)
  "任意位置复制选中区域或当前行"
  (interactive (list (point) (mark)))
  (if (region-active-p)
      (kill-ring-save beg end)
    (let ((currentPoint (point)))
      (set-mark-command (back-to-indentation))
      (kill-ring-save (region-beginning) (line-end-position))
      (goto-char currentPoint)
      )
    )
  )

(defun comment-line-or-region (beg end)
  "注释行或选中区域"
  (interactive (list (point) (mark)))
  (if (region-active-p)
      (comment-region beg end)
    (progn
      (comment-line 1)
      (goto-char beg)
      )
    )
  )

;; defun end ---------------------------------------------------------------

(provide 'core-keybindings)
