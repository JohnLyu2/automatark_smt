(declare-const X String)
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}")))
(check-sat)

(exit)
