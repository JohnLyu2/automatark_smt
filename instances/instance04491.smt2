(declare-const X String)
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Software") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "FictionalUser-Agent:User-Agent:\u{a}")))))
(check-sat)
