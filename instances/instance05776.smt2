(declare-const X String)
; ProAgentHost\x3aHost\x3AiOpuss_sq=aolsnssigninwininet
(assert (not (str.in_re X (str.to_re "ProAgentHost:Host:iOpuss_sq=aolsnssigninwininet\u{a}"))))
(check-sat)

(exit)
