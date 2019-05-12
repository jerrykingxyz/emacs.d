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
;;lsp
(require 'init-lsp)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet web-mode rg rainbow-delimiters prettier-js neotree magit lsp-ui json-mode go-mode glsl-mode flycheck emmet-mode company-lsp atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
