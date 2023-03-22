(declare-const X String)
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
(check-sat)
