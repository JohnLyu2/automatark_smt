(declare-const X String)
; richfind\x2Ecomdcww\x2Edmcast\x2Ecom
(assert (not (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}"))))
(check-sat)
