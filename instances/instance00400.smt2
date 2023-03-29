(declare-const X String)
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\u{a}")))
(check-sat)

(exit)
