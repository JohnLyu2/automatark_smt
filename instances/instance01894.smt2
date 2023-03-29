(declare-const X String)
; Servidor\x2Ehome\x2Eedonkey\x2Ecom
(assert (not (str.in_re X (str.to_re "Servidor.\u{13}home.edonkey.com\u{a}"))))
(check-sat)

(exit)
