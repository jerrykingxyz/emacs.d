(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)

;; org mode 自动断行
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;;ycmd
;;(require 'init-ycmd)
;;rg
(require 'init-rg)
;;company mode
(require 'init-company)
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
;;golang
(require 'init-go)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yasnippet typescript-mode spacemacs-theme rjsx-mode neotree glsl-mode flycheck-ycmd emmet-mode company-ycmd))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init)
