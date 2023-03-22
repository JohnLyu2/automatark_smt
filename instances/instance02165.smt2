(declare-const X String)
; www\x2Esogou\x2Ecom\s+HWAE\+The\+password\+is\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.sogou.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE+The+password+is:\u{a}")))))
(check-sat)
