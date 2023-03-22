(declare-const X String)
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (str.in_re X (re.++ (str.to_re "whenu.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Agent") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toWebupdate.cgithisHost:connection\u{a}"))))
; Subject\x3Alinkautomatici\x2EcomReferer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in_re X (str.to_re "Subject:linkautomatici.comReferer:www.searchreslt.com\u{a}")))
(check-sat)
