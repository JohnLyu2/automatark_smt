(declare-const X String)
; passcorrect\x3B\s+\x2Fcbn\x2Fnode=Host\x3A\x3Fsearch\x3Dversion
(assert (not (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}")))))
; <(\/{0,1})img(.*?)(\/{0,1})\>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (str.to_re "img") (re.* re.allchar) (re.opt (str.to_re "/")) (str.to_re ">\u{a}")))))
(check-sat)

(exit)
