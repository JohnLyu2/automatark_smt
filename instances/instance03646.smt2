(declare-const X String)
; source\=IncrediFind\s+Host\x3A\s+Host\x3AHost\x3A
(assert (str.in_re X (re.++ (str.to_re "source=IncrediFind") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:\u{a}"))))
(check-sat)

(exit)
