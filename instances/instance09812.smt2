(declare-const X String)
; Xtra\s+Host\x3A\s+Referer\x3aThisSubject\x3a
(assert (not (str.in_re X (re.++ (str.to_re "Xtra") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Referer:ThisSubject:\u{a}")))))
; Iterenetbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in_re X (str.to_re "Iterenetbadurl.grandstreetinteractive.com\u{a}")))
(check-sat)

(exit)
