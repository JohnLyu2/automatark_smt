(declare-const X String)
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (not (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}"))))
(check-sat)
