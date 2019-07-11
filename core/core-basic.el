;; (set-default-font "Source Code Pro 10")
(set-default-font "Monaco 10")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "WenQuanYi Zen Hei Mono" :size 12)))
(tool-bar-mode -1)
(menu-bar-mode -1)
(set-scroll-bar-mode nil)

(setq-default cursor-type 'bar)

(setq inhibit-splash-screen t)

(fset 'yes-or-no-p'y-or-n-p)
;; 非选中窗口禁用光标
(setq-default cursor-in-non-selected-windows nil)
;; 行高亮
(global-hl-line-mode 1)
;; 关闭自动保存
(setq auto-save-default nil)
;; 自动更新buffer变更文件
(global-auto-revert-mode t)
;; 自动变更周期
;; （setq auto-revert-interval 3)
;; 编辑文件备份路径变更
(setq backup-directory-alist (quote (("." . "~/._backups_emacs"))))
;; 自动更新git状态
(setq auto-revert-check-vc-info t)
;; 括号高亮
(show-paren-mode 1)
;; tab缩进改为space
(setq-default indent-tabs-mode nil)
;; 记录最近打开文件
(recentf-mode t)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

(provide 'core-basic)
