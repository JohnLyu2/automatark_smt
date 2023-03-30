(declare-const X String)
; ProPOWRSTRPquick\x2Eqsrch\x2EcomReferer\x3A
(assert (not (str.in_re X (str.to_re "ProPOWRSTRPquick.qsrch.comReferer:\u{a}"))))
(check-sat)

(exit)
