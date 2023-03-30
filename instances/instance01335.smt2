(declare-const X String)
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in_re X (str.to_re "TSA/S:Users\u{5c}http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))
(check-sat)

(exit)
