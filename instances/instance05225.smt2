(declare-const X String)
; searchnugget.*Referer\x3A\s+User-Agent\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.* re.allchar) (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:\u{a}")))))
(check-sat)
