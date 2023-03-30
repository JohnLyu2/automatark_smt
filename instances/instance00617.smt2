(declare-const X String)
; PORT\x3Dinternalcyber@yahoo\x2EcomHeaders
(assert (str.in_re X (str.to_re "PORT=internalcyber@yahoo.comHeaders\u{a}")))
(check-sat)

(exit)
