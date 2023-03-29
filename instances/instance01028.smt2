(declare-const X String)
; Computeron\x3Acom\x3E2\x2E41
(assert (str.in_re X (str.to_re "Computeron:com>2.41\u{a}")))
(check-sat)

(exit)
