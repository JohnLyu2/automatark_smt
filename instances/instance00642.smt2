(declare-const X String)
; DaysLOGHost\x3aHost\x3a\x7D\x7BOS\x3AHost\x3A
(assert (str.in_re X (str.to_re "DaysLOGHost:Host:}{OS:Host:\u{a}")))
(check-sat)

(exit)
