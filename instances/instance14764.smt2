(declare-const X String)
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmviewComponentisrelated.yok.com\u{a}"))))
; Host\x3A\s+\x2FNFO\x2CRegisteredDeletingadfsgecoiwnf
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/NFO,RegisteredDeletingadfsgecoiwnf\u{1b}\u{a}"))))
(check-sat)

(exit)
