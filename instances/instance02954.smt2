(declare-const X String)
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}fromReferer:search.conduit.com/dss/cc.2_0_0.\u{a}"))))
(check-sat)

(exit)
