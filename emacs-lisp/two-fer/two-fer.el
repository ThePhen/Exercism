;;; two-fer.el --- Two-fer Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun two-fer (&optional name)
  (concat 
     "One for " 
     (null? name)
     ", one for me.")
)

(provide 'two-fer)
;;; two-fer.el ends here
