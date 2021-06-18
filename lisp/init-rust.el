(require-package 'rust-mode)
(require-package 'flycheck-rust)

(require 'rust-mode)
(require 'flycheck-rust)

(setq rust-format-on-save t)

(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(provide 'init-rust)
