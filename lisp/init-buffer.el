;;; init-buffer.el --- buffer settings  -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(global-set-key (kbd "C-x C-b") 'ibuffer)
(autoload 'ibuffer "ibuffer" "List buffers." t)

(defun to-next-file-buffer ()
  "Change current buffer to next file buffer."
  (interactive)
  (let* ((buf-list (buffer-list))
         (buf-length (length buf-list))
         (current-buf-index (cl-position (current-buffer) buf-list))
         (i 1))
    (while (< i buf-length)
      (let* ((index (% (+ i current-buf-index) buf-length))
             (buf (nth index buf-list)))
        (setq i (+ i 1))
        (if (buffer-file-name buf)
            (progn
              (message "debugger: %s" buf)
              (switch-to-buffer buf)
              (cl-return-from to-next-file-buffer nil)
              ))
        ))
    ))

(defun to-previous-file-buffer ()
  "Change current buffer to previous file buffer."
  (interactive)
  (let* ((buf-list (buffer-list))
         (buf-length (length buf-list))
         (current-buf-index (cl-position (current-buffer) buf-list))
         (i 1))
    (while (< i buf-length)
      (let* ((index (% (+ (- current-buf-index i) buf-length) buf-length))
             (buf (nth index buf-list)))
        (setq i (+ i 1))
        (if (buffer-file-name buf)
            (progn
              (message "debugger: %s" buf)
              (switch-to-buffer buf)
              (cl-return-from to-previous-file-buffer nil)
              ))
        ))
    ))

(provide 'init-buffer)
;;; init-buffer.el ends here
