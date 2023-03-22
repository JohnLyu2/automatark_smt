(declare-const X String)
; BasicPointsHost\x3Anews
(assert (not (str.in_re X (str.to_re "BasicPointsHost:news\u{a}"))))
(check-sat)
