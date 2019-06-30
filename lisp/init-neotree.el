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

(add-hook 'neotree-change-root-hook
          (lambda (root-dir)
            (let* ((project-init-file (expand-file-name "./.emacs/init.el" root-dir)))
              (if (file-exists-p project-init-file)
                  (load project-init-file)))))

(provide 'init-neotree)
