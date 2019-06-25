(require-package 'neotree)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(setq-default neo-show-hidden-files t)

;; neotree root change hook
(defvar neotree-change-root-hook nil)
(advice-add 'neo-buffer--change-root
            :around (lambda (fn root-dir)
                      (funcall fn root-dir)
                      (run-hook-with-args 'neotree-change-root-hook root-dir)
                      ))

(provide 'init-neotree)
