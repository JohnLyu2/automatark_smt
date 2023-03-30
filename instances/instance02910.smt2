(declare-const X String)
; news\s+Host\x3A.*Peerwww\x2Elocators\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "news") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Peerwww.locators.com\u{a}")))))
(check-sat)

(exit)
