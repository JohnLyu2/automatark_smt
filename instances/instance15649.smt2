(declare-const X String)
; Windows\x2Fclient\x2FBlackreportc\.goclick\.comX-Sender\x3A
(assert (str.in_re X (str.to_re "Windows/client/Blackreportc.goclick.comX-Sender:\u{13}\u{a}")))
; Computeron\x3Acom\x3E2\x2E41
(assert (not (str.in_re X (str.to_re "Computeron:com>2.41\u{a}"))))
(check-sat)

(exit)
