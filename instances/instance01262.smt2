(declare-const X String)
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Agent") (re.* re.allchar) (str.to_re "as.starware.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ServerToolbarcojud.dmcast.com\u{a}")))))
(check-sat)

(exit)
