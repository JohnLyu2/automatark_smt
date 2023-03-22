(declare-const X String)
; /\x2eogg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ogg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (not (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "LOG\u{a}")))))
; serverUSER-AttachedReferer\x3AyouPointsUser-Agent\x3AHost\x3a
(assert (not (str.in_re X (str.to_re "serverUSER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
(check-sat)
