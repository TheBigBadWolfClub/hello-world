; brew install clisp
; clisp morning.lsp
;
; FIX IT
(defun concatString (list)
  (if (listp list)
      (let ((result ""))
        (dolist (item list)
          (if (stringp item)
              (setq result (concatenate 'string result item))))
        "ups ...")))
(print (concatString (list "Good" "" "morning")))
