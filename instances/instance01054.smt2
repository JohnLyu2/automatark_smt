(declare-const X String)
; Host\x3a\x7D\x7BPort\x3Awww\x2Einstafinder\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:}{Port:www.instafinder.com\u{a}"))))
(check-sat)
