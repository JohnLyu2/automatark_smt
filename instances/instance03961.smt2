(declare-const X String)
; /\x3d\x3d$/P
(assert (str.in_re X (str.to_re "/==/P\u{a}")))
(check-sat)
