(declare-const X String)
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
; www\x2Ealtnet\x2Ecom[^\n\r]*Host\x3A
(assert (str.in_re X (re.++ (str.to_re "www.altnet.com\u{1b}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
(check-sat)

(exit)
