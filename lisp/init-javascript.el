(require-package 'web-mode)
(require-package 'typescript-mode)
(require-package 'prettier-js)

(require 'web-mode)
(require 'typescript-mode)
(require 'prettier-js)

;; set .jsx & .tsx file to web-mode
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mjs\\'" . js-mode))

(add-hook 'web-mode-hook 'prettier-js-mode)
(add-hook 'typescript-mode-hook 'prettier-js-mode)
(add-hook 'js-mode-hook 'prettier-js-mode)

(setq-default js-indent-level 2)
(setq-default typescript-indent-level 2)
(setq-default web-mode-markup-indent-offset 2)
(setq-default web-mode-css-indent-offset 2)
(setq-default web-mode-code-indent-offset 2)

(require 'init-neotree)
(add-hook 'neotree-change-root-hook
          (lambda (root-dir)
            (let* ((node-modules-prettier (expand-file-name "node_modules/.bin/prettier" root-dir))
                   (prettier-js-command-path (if (file-exists-p node-modules-prettier) node-modules-prettier "prettier")))
              (setq-default prettier-js-command prettier-js-command-path))))

(provide 'init-javascript)
