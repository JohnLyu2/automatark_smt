(declare-const X String)
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}")))
(check-sat)
