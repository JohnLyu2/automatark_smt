(declare-const X String)
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in_re X (str.to_re "Host:as.starware.com/dp/search?x=\u{a}"))))
(check-sat)

(exit)
