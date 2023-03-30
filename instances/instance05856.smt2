(declare-const X String)
; BY\x7D\x7BUser\x3AHost\x3Aconnection\x2E
(assert (str.in_re X (str.to_re "BY}{User:Host:connection.\u{a}")))
(check-sat)

(exit)
