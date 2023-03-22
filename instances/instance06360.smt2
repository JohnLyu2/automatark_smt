(declare-const X String)
; User-Agent\x3A[^\n\r]*HTTP_RAT_
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "HTTP_RAT_\u{a}"))))
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in_re X (str.to_re "Subject:linkautomatici.comReferer:www.searchreslt.com\u{a}")))
; deskwizz\x2EcomReportsadblock\x2Elinkz\x2EcomUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "deskwizz.comReportsadblock.linkz.comUser-Agent:\u{a}"))))
; /*d(9,15)
(assert (not (str.in_re X (re.++ (re.* (str.to_re "/")) (str.to_re "d9,15\u{a}")))))
(check-sat)
