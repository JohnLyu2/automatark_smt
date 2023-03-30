(declare-const X String)
; Agentppcdomain\x2Eco\x2EukWordSpy\-Locked
(assert (not (str.in_re X (str.to_re "Agentppcdomain.co.ukWordSpy-Locked\u{a}"))))
(check-sat)

(exit)
