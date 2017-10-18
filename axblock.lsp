#!/usr/bin/clisp
(defun c:axblocks (/ b bn tl)
  (vlax-for b (vla-get-blocks
                (vla-get-ActiveDocument (vlax-get-acad-object))
              )
    (if (= (vla-get-islayout b) :vlax-false)
      (setq tl (cons (vla-get-name b) tl))
    )
  )
  (reverse tl)
)
