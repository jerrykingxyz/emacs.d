(require-package 'ycmd)

(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)
(set-variable 'ycmd-server-command '("python3" "/Users/jerryking/Project/sourceCode/ycmd/ycmd"))

(provide 'init-ycmd)
