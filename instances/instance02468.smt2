(declare-const X String)
; \x7D\x7BOS\x3AsecurityUser-Agent\x3awww\x2Esogou\x2Ecom
(assert (str.in_re X (str.to_re "}{OS:securityUser-Agent:www.sogou.com\u{a}")))
(check-sat)
