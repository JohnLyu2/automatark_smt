(declare-const X String)
; www\x2Epcsentinelsoftware\x2Ecom
(assert (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}")))
(check-sat)

(exit)
