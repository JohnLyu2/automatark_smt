(declare-const X String)
; Cookie\x3a\s+\x2FGRSI\|Server\|Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/GRSI|Server|\u{13}Host:origin=sidefind\u{a}"))))
(check-sat)
