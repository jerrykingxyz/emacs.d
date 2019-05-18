;;ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

;; 不自动保存模式
(setq auto-save-default nil)
(setq make-backup-files nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
;; 打开括号匹配
(show-paren-mode 1)
;; 显示时间
(setq-default display-time-format "%Y/%b/%d %H:%M")
(display-time-mode 1)
;; 隐藏menu bar
(menu-bar-mode -1)
;; 高亮正在编辑的行
(global-hl-line-mode 1)
;;改变Emacs要你回答yes的行为。按y或空格键表示yes，n表示no。
(fset 'yes-or-no-p 'y-or-n-p)
;;禁止在鼠标点击的地方插入剪贴板内容
(setq mouse-yank-at-point t)

(provide 'init-custom-config)
