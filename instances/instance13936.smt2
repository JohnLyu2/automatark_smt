(declare-const X String)
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}")))))
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (not (str.in_re X (str.to_re "<logs@dummyserver.com>\u{a}"))))
(check-sat)
