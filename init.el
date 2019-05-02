(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)

;; org mode 自动断行
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;;git
(require 'init-git)
;;rg
(require 'init-rg)
;;lsp
(require 'init-lsp)
;;flycheck mode
(require 'init-flycheck)
;;glsl mode
(require 'init-glsl)
;;yasnippet
(require 'init-yasnippet)
;;emmet mode
(require 'init-emmet)
;;neotree
(require 'init-neotree)
;;utils
(require 'init-utils)
;;theme
(require 'init-theme)
;;json
(require 'init-json)
;;javascript
(require 'init-javascript)
;;shortcut key
(require 'init-shortcut-key)

(provide 'init)
