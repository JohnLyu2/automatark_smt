(declare-const X String)
; StarLoggerCookie\x3aHost\x3APRODUCEDwebsearch\.getmirar\.com
(assert (str.in_re X (str.to_re "StarLoggerCookie:Host:PRODUCEDwebsearch.getmirar.com\u{a}")))
(check-sat)

(exit)
