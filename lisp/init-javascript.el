(require-package 'web-mode)
(require-package 'js2-mode)
(require-package 'rjsx-mode)
(require-package 'tide)
(require-package 'prettier-js)

(require 'web-mode)
(require 'prettier-js)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  ;; (flycheck-mode +1)
  ;; (setq flycheck-check-syntax-automatically '(save mode-enabled))
  ;; (eldoc-mode +1)
  ;; (tide-hl-identifier-mode +1)
  ;; (company-mode +1)
)
;; tide format
;;(add-hook 'before-save-hook 'tide-format-before-save)
;; ts
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)
;; tsx
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (progn (setup-tide-mode)
                     (prettier-js-mode)))))
;; js
(add-hook 'js2-mode-hook #'setup-tide-mode)
(add-hook 'js2-mode-hook 'prettier-js-mode)
;; jsx
(add-hook 'rjsx-mode-hook #'setup-tide-mode)
(add-hook 'rjsx-mode-hook 'prettier-js-mode)

(setq-default js-indent-level 2)
(setq-default typescript-indent-level 2)
(setq-default web-mode-markup-indent-offset 2)
(setq-default web-mode-css-indent-offset 2)
(setq-default web-mode-code-indent-offset 2)

(provide 'init-javascript)
