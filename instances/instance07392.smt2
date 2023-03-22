(declare-const X String)
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "com") (re.range "0" "9") (str.to_re "search.conduit.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; \x7D\x7BOS\x3AsecurityUser-Agent\x3awww\x2Esogou\x2Ecom
(assert (not (str.in_re X (str.to_re "}{OS:securityUser-Agent:www.sogou.com\u{a}"))))
(check-sat)
