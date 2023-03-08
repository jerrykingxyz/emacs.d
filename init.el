;;; init.el --- Load the full configuration -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; to fix macOS failed to download 'gnu' archive bug
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(require 'init-elpa)

;; org mode 自动断行
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;; git
(require 'init-git)
;; rg
(require 'init-rg)
;; comany mode
(require 'init-company)
;; flycheck mode
(require 'init-flycheck)
;; glsl mode
(require 'init-glsl)
;; yasnippet
(require 'init-yasnippet)
;; lua mode
(require 'init-lua)
;; css mode
(require 'init-css)
;; neotree
(require 'init-neotree)
;; custom config
(require 'init-custom-config)
;; buffer
(require 'init-buffer)
;; theme
(if (daemonp)
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (with-selected-frame frame (require 'init-theme))))
  (require 'init-theme))
;; json
(require 'init-json)
;; javascript
(require 'init-javascript)
;; shortcut key
(require 'init-shortcut-key)
;; pomidor
(require 'init-pomidor)
;; rust
(require 'init-rust)
;; go
(require 'init-go)
;; lsp
(require 'init-lsp)
;; markdown
(require 'init-markdown)
;; tabnine
;; (require 'init-tabnine)
;;multiple-cursors
(require 'init-multiple-cursors)

(provide 'init)
;;; init.el ends here
