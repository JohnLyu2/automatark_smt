(declare-const X String)
; www\x2Ericercadoppia\x2Ecom[^\n\r]*xml\s+User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.ricercadoppia.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "xml") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; User-Agent\x3Aregister\.aspUser-Agent\x3AHost\x3AcdpView
(assert (str.in_re X (str.to_re "User-Agent:register.aspUser-Agent:Host:cdpView\u{a}")))
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
(check-sat)

(exit)
