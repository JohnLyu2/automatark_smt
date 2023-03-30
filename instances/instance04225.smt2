(declare-const X String)
; mywayHost\x3Awww\x2Eeblocs\x2Ecom
(assert (not (str.in_re X (str.to_re "mywayHost:www.eblocs.com\u{1b}\u{a}"))))
(check-sat)

(exit)
