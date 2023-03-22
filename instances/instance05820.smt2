(declare-const X String)
; onBetaHost\x3ayouRootReferer\x3A
(assert (str.in_re X (str.to_re "onBetaHost:youRootReferer:\u{a}")))
(check-sat)
