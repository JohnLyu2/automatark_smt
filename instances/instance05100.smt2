(declare-const X String)
; \x7CConnected\s+adblock\x2Elinkz\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "|Connected") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}")))))
(check-sat)

(exit)
