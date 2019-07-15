;;; init-buffer.el --- buffer settings  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(defun to-next-file-buffer ()
  "Change current buffer to next file buffer."
  (interactive)
  (let* ((buf-length (length (buffer-list)))
         (i 0))
    (while (< i buf-length)
      (next-buffer)
      (if (buffer-file-name (current-buffer))
        ;; break while loop
        (setq i buf-length)
        (cl-incf i)))))

(defun to-previous-file-buffer ()
  "Change current buffer to previous file buffer."
  (interactive)
  (let* ((buf-length (length (buffer-list)))
         (i 0))
    (while (< i buf-length)
      (previous-buffer)
      (if (buffer-file-name (current-buffer))
        ;; break while loop
        (setq i buf-length)
        (cl-incf i)))))

(global-set-key (kbd "C-x <left>") 'to-previous-file-buffer)
(global-set-key (kbd "C-x <right>") 'to-next-file-buffer)

(provide 'init-buffer)
;;; init-buffer.el ends here
