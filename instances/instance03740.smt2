(declare-const X String)
; /^Host\x3A\s+.*jaiku\x2Ecom/smiH
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "jaiku.com/smiH\u{a}")))))
(check-sat)

(exit)
