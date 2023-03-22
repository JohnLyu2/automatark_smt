(declare-const X String)
; /^[a-z\d\x2b\x2f\x3d]{48,256}$/iP
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 48 256) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/iP\u{a}"))))
; \x2Ehtml\s+IDENTIFY\s+\x2Fbar_pl\x2Ffav\.fcgiwwwUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgiwwwUser-Agent:\u{a}"))))
(check-sat)
