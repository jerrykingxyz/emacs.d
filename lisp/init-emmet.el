(require-package 'emmet-mode)

(require 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)

(setq-default css-indent-offset 2)

(provide 'init-emmet)
