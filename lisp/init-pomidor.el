(require-package 'pomidor)

(require 'pomidor)

(global-set-key (kbd "<f12>") 'pomidor)

(setq pomidor-sound-tick nil
      pomidor-sound-tack nil
      pomidor-sound-overwork nil
      pomidor-sound-break-over nil)
(setq alert-default-style 'osx-notifier)

(provide 'init-pomidor)
