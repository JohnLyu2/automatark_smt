(declare-const X String)
; www\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "www.searchreslt.com\u{a}"))))
(check-sat)
