(declare-const X String)
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (str.in_re X (str.to_re "<logs@dummyserver.com>\u{a}")))
(check-sat)

(exit)
