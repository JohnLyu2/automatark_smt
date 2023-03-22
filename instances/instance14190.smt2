(declare-const X String)
; /\x2ejar([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jar") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}")))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (not (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}"))))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Spy") (re.range "0" "9") (str.to_re "ccecaedbebfcaf.com\u{a}")))))
(check-sat)
