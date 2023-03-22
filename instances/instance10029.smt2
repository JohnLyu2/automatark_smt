(declare-const X String)
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}")))
; /filename=[^\n]*\x2edcr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dcr/i\u{a}"))))
(check-sat)
