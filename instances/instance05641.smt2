(declare-const X String)
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (not (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}"))))
(check-sat)

(exit)
