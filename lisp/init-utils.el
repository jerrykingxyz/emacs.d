(defun utils-format-line (&optional left right total-length)
  "Return a string of length (default is `window-total-width') containing LEFT, and RIGHT aligned respectively."
  (let* ((total-length (or total-length (window-total-width)))
         (available-width (- total-length (length left) 3)))
    (format (format " %%s %%%ds " available-width) left right)))

(provide 'init-utils)
