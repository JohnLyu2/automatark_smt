(declare-const X String)
; \x2FcommunicatortbHost\x3a
(assert (not (str.in_re X (str.to_re "/communicatortbHost:\u{a}"))))
(check-sat)
