;;; init-custom-config.el --- custom config  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require 'init-utils)

;; 不自动保存模式
(setq auto-save-default nil)
(setq make-backup-files nil)

;; disable lockfiles
(setq create-lockfiles nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(show-paren-mode 1)
;; hide menu bar
(menu-bar-mode 0)
;; hide tool bar
(tool-bar-mode 0)
;; hide scroll bar
(if window-system (scroll-bar-mode 0))
;; high light edit line
(global-hl-line-mode 1)
;; use y or n
(fset 'yes-or-no-p 'y-or-n-p)

(setq mouse-yank-at-point t)

;; use global subword-mode
(global-subword-mode 1)

(setq-default mode-line-format
              '(:eval (utils-format-line
                       (concat (format-mode-line " %b [%*] %l:%c ")
                               (format-mode-line '(vc-mode vc-mode)))
                       (concat (format-mode-line " [%m] ")
                               (format-mode-line 'minor-mode-alist)))))

(provide 'init-custom-config)
;;; init-custom-config.el ends here
