(declare-const X String)
; ProAgentHost\x3ALOGSeconds\-
(assert (not (str.in_re X (str.to_re "ProAgentHost:LOGSeconds-\u{a}"))))
(check-sat)

(exit)
