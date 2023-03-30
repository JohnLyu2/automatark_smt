(declare-const X String)
; /filename=[^\n]*\x2em3u/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m3u/i\u{a}")))))
; href[\s]*=[\s]*"[^\n"]*"
(assert (str.in_re X (re.++ (str.to_re "href") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{22}"))) (str.to_re "\u{22}\u{a}"))))
; (\<!--\s*.*?((--\>)|$))
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<!--") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "-->")))))
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Agent") (re.* re.allchar) (str.to_re "as.starware.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ServerToolbarcojud.dmcast.com\u{a}"))))
(check-sat)

(exit)
