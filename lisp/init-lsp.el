;;; init-lsp.el --- lsp & dap  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; company lsp
;;(require-package 'company-lsp)
;;(require 'company-lsp)

;; lsp mode
(require-package 'lsp-mode)
(require 'lsp-mode)
;; config
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq lsp-idle-delay 0.500)
(setq lsp-headerline-breadcrumb-enable nil)
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
