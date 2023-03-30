(declare-const X String)
; \x2Fdesktop\x2FSystemwwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\u{a}"))))
(check-sat)

(exit)
