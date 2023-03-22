(declare-const X String)
; show\x2Eroogoo\x2Ecom\s+report\<\x2Ftitle\>Host\x3a\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "show.roogoo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "report</title>Host:.fcgi\u{a}")))))
(check-sat)
