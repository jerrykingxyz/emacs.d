(require-package 'company-tabnine)

(require 'company-tabnine)

(add-to-list 'company-backends #'company-tabnine)

(setq company-idle-delay 0)

(provide 'init-tabnine)
