(declare-const X String)
; max-\s+\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "max-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgi\u{a}")))))
(check-sat)
