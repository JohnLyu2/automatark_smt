(declare-const X String)
; /\x3d\x0a$/P
(assert (str.in_re X (str.to_re "/=\u{a}/P\u{a}")))
(check-sat)
