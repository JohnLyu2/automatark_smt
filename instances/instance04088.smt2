(declare-const X String)
; Authorization\x3a\s+Host\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Authorization:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
(check-sat)

(exit)
