(declare-const X String)
; Host\x3A\supgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\u{a}"))))
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
(check-sat)
