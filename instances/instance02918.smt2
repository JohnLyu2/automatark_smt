(declare-const X String)
; welcomeforToolbarHost\x3A
(assert (str.in_re X (str.to_re "welcomeforToolbarHost:\u{a}")))
(check-sat)
