(declare-const X String)
; HANDYHost\x3aHost\x3aHost\x3Ayddznydqir\x2feviGatornewsSoftActivity
(assert (not (str.in_re X (str.to_re "HANDYHost:Host:Host:yddznydqir/eviGatornewsSoftActivity\u{13}\u{a}"))))
; ed2k\xc0STATUS\xc0Server\x7D\x7BPort\x3Ahttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in_re X (str.to_re "ed2k\u{c0}STATUS\u{c0}Server\u{13}}{Port:http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))
(check-sat)
