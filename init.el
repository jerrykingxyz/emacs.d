(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)

;; org mode 自动断行
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;;git
(require 'init-git)
;;rg
(require 'init-rg)
;;comany mode
(require 'init-company)
;;flycheck mode
(require 'init-flycheck)
;;glsl mode
(require 'init-glsl)
;;yasnippet
(require 'init-yasnippet)
;;css mode
(require 'init-css)
;;neotree
(require 'init-neotree)
;;custom config
(require 'init-custom-config)
;;theme
(require 'init-theme)
;;json
(require 'init-json)
;;javascript
(require 'init-javascript)
;;shortcut key
(require 'init-shortcut-key)
;;lsp
(require 'init-lsp)
;;multiple-cursors
(require 'init-multiple-cursors)

(provide 'init)
