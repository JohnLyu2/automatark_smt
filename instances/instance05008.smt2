(declare-const X String)
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in_re X (str.to_re "Subject:linkautomatici.comReferer:www.searchreslt.com\u{a}")))
(check-sat)
