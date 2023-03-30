(declare-const X String)
; Referer\x3aHost\x3aport\x3aactivity
(assert (str.in_re X (str.to_re "Referer:Host:port:activity\u{a}")))
(check-sat)

(exit)
