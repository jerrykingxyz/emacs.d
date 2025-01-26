;;; init-lsp.el --- lsp & dap  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

(setenv "LSP_USE_PLISTS" "true")
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
(add-hook 'rust-mode-hook #'lsp)

(add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\node_modules\\'")
(add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\dist\\'")
(add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\target\\'")

;; dap mode
(require-package 'dap-mode)
(require 'dap-mode)
(dap-mode 1)
(dap-ui-mode 1)
;; nodejs
(require 'dap-node)

;; run `M-x dap-node-setup` to init env
;; run debug with 'node --inspect-brk --enable-source-maps ./index.js'
(dap-register-debug-template "node-js-debug"
                             (list :type "node"
                                   :sourceMaps t
                                   :request "attach"
                                   :host "localhost"
                                   :port 9229
                                   :protocol "inspector"))


;; apt install gdbserver
;; gdbserver localhost:2000 <command>
(require 'dap-gdb-lldb)
(dap-register-debug-template "rust-debug"
                             (list :type "gdbserver"
                                   :request "attach"
				                           :gdbpath "rust-gdb"
                                   :target ":2000"
                                   :cwd (expand-file-name default-directory)))
;; see gdb info in `dap-go-to-output-buffer`
;; run `set print pretty` in gdb
(setq dap-output-buffer-filter '("stdout" "stderr" "console"))

(provide 'init-lsp)
;;; init-lsp.el ends here
