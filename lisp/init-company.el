(require-package 'company)
(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-show-numbers t)
;; 使用数字0-9完成选择
(let ((map company-active-map))
  (mapc (lambda (x) (define-key map (format "%d" x)
                 `(lambda () (interactive) (company-complete-number ,x))))
        (number-sequence 0 9)))

(provide 'init-company)
