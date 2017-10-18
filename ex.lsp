#!/usr/bin/clisp
(defun c:retan (/ pl p2 p3 p4)
(setq pl (getpoint "\nfirst corner of rectangle: "))
(setq p3 (getcorner "\nsecond corner of rectangle: "))
(setq p2 (list (car pl)(cadr p3)))
(setq p4 (list (car p3)(cadr pl)))
(command "line" pl p2 p3 p4 "c")
(princ)
)
