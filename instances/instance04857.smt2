(declare-const X String)
; www\x2Emirarsearch\x2Ecom
(assert (str.in_re X (str.to_re "www.mirarsearch.com\u{a}")))
(check-sat)

(exit)
