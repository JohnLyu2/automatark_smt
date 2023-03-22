(declare-const X String)
; \x2Fsearchfast\x2FNavhelper
(assert (str.in_re X (str.to_re "/searchfast/Navhelper\u{a}")))
(check-sat)
