;;; init-yasnippet.el --- yasnippet config  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(require-package 'yasnippet)

(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/site-lisp/snippets"))
(yas-global-mode 1)

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
