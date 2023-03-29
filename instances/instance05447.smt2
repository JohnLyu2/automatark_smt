(declare-const X String)
; www\x2eurlblaze\x2enetCurrentHost\x3A
(assert (str.in_re X (str.to_re "www.urlblaze.netCurrentHost:\u{a}")))
(check-sat)

(exit)
