;; company mode
(require-package 'company)

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)
;; config company
(setq company-show-numbers t)
(let ((map company-active-map))
  (mapc (lambda (x) (define-key map (format "%d" x)
                 `(lambda () (interactive) (company-complete-number ,x))))
        (number-sequence 0 9)))

(provide 'init-company)
