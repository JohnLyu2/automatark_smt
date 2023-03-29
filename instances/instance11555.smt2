(declare-const X String)
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}"))))
; \x3BCIA\s+is\s+User-Agent\x3Acid=tb\x2eCookie\x3A
(assert (str.in_re X (re.++ (str.to_re ";CIA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}"))))
; User-Agent\x3awww\x2Eadoptim\x2Ecom
(assert (not (str.in_re X (str.to_re "User-Agent:www.adoptim.com\u{a}"))))
(check-sat)

(exit)
