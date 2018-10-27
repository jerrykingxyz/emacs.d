(if (boundp 'ycmd-server-command)
    (progn (require-package 'flycheck-ycmd)
           (flycheck-ycmd-setup))
  (progn (require-package 'flycheck)
         (require 'flycheck)))

(add-hook 'after-init-hook 'global-flycheck-mode)

(provide 'init-flycheck)
