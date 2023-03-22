(declare-const X String)
; quick\x2Eqsrch\x2Ecom\s+Apofis\d+ToolBar
(assert (not (str.in_re X (re.++ (str.to_re "quick.qsrch.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Apofis") (re.+ (re.range "0" "9")) (str.to_re "ToolBar\u{a}")))))
(check-sat)
