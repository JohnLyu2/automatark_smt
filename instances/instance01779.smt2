(declare-const X String)
; www\x2Eweepee\x2Ecomhttp\x0D\x0ACurrentOwner\x3A
(assert (str.in_re X (str.to_re "www.weepee.com\u{1b}http\u{d}\u{a}CurrentOwner:\u{a}")))
(check-sat)
