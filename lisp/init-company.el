(if (boundp 'ycmd-server-command)
    (progn (require-package 'company-ycmd)
           (company-ycmd-setup))
  (progn (require-package 'company)
         (require 'company)))

(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
