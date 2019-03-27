(require-package 'atom-one-dark-theme)
(require-package 'rainbow-delimiters)

(load-theme 'atom-one-dark t)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(provide 'init-theme)
