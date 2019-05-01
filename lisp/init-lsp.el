;; company lsp
(require-package 'company-lsp)
(require 'company-lsp)
;; config
(setq company-show-numbers t)
(let ((map company-active-map))
  (mapc (lambda (x) (define-key map (format "%d" x)
                 `(lambda () (interactive) (company-complete-number ,x))))
        (number-sequence 0 9)))

;; lsp ui
(require-package 'lsp-ui)
(require 'lsp-ui)

;; lsp mode
(require-package 'lsp-mode)
(require 'lsp-mode)
;; config
(setq lsp-prefer-flymake nil)
(add-hook 'js-mode-hook #'lsp)
(add-hook 'typescript-mode-hook #'lsp)
(add-hook 'web-mode-hook #'lsp)

(provide 'init-lsp)
