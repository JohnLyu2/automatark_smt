(declare-const X String)
; ookflolfctm\x2fnmot\.fmu
(assert (str.in_re X (str.to_re "ookflolfctm/nmot.fmu\u{a}")))
(check-sat)

(exit)
