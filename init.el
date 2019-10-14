;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(unless (frame-parameter nil 'fullscreen)
  (toggle-frame-maximized)
  )
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'load-path "~/.emacs.d/core")
(require 'core-basic)
(require 'core-linum)
(require 'core-package)
(require 'core-startup)
(require 'core-keybindings)
(require 'core-themes)
(require 'core-matching)
(require 'core-manages)
(require 'core-modeline)
(require 'core-textModes)
(require 'core-completion)
(require 'core-editools)
(require 'core-jump)
(require 'core-org)
;; (require 'core-auxiliaries)
