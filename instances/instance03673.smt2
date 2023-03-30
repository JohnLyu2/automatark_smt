(declare-const X String)
; PcastPORT-config\x2E180solutions\x2Ecom
(assert (str.in_re X (str.to_re "PcastPORT-config.180solutions.com\u{a}")))
(check-sat)

(exit)
