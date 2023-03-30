(declare-const X String)
; \x2APORT3\x2A\s+Warezxmlns\x3A%3flinkautomatici\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.com\u{a}")))))
(check-sat)

(exit)
