(require-package 'atom-one-dark-theme)
(load-theme 'atom-one-dark t)

(require-package 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'init-theme)
