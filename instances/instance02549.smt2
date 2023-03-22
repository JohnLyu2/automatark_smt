(declare-const X String)
; \x2Ehtml\s+IDENTIFY\s+\x2Fbar_pl\x2Ffav\.fcgiwwwUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgiwwwUser-Agent:\u{a}"))))
(check-sat)
