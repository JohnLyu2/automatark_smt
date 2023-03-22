(declare-const X String)
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\sMycount\x2Eyok\x2EcomProBuilt-inBasicYWRtaW46cGFzc3dvcmQ
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Mycount.yok.comProBuilt-inBasicYWRtaW46cGFzc3dvcmQ\u{a}")))))
(check-sat)
