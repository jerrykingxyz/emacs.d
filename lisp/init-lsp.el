;;; init-lsp.el --- lsp & dap  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; company lsp
(require-package 'company-lsp)
(require 'company-lsp)

;; lsp ui
(require-package 'lsp-ui)
(require 'lsp-ui)
(setq lsp-ui-sideline-delay 3)

;; lsp mode
(require-package 'lsp-mode)
(require 'lsp-mode)
;; config
(setq lsp-prefer-flymake nil)
(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'web-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)

;; dap mode
;;(require-package 'dap-mode)
;;(require 'dap-mode)
;;(dap-mode 1)
;;(dap-ui-mode 1)
;; nodejs
;;(require 'dap-node)

(provide 'init-lsp)
;;; init-lsp.el ends here
