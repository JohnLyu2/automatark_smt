(declare-const X String)
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (str.in_re X (str.to_re "SSKCstech.web-nexus.net\u{a}")))
(check-sat)

(exit)
