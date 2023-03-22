(declare-const X String)
; Xtra\s+Host\x3A\s+Referer\x3aThisSubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Xtra") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Referer:ThisSubject:\u{a}")))))
; e2give\.comrichfind\x2Ecom\x22007User-Agent\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in_re X (str.to_re "e2give.comrichfind.com\u{22}007User-Agent:www.searchreslt.com\u{a}"))))
(check-sat)
