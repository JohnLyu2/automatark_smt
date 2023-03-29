(declare-const X String)
; Pleasewww\x2Ewebfringe\x2Ecom\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (str.in_re X (str.to_re "Pleasewww.webfringe.com\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax\u{a}")))
; \x2Ehtml\s+IDENTIFY\s+\x2Fbar_pl\x2Ffav\.fcgiwwwUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgiwwwUser-Agent:\u{a}")))))
(check-sat)

(exit)
