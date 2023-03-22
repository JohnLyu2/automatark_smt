(declare-const X String)
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "www.2-seek.com/search") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TPSystem\u{a}")))))
(check-sat)
