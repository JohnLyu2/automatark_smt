(declare-const X String)
; www\x2Ezhongsou\x2Ecom\sisHost\x3Aare
(assert (not (str.in_re X (re.++ (str.to_re "www.zhongsou.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "isHost:are\u{a}")))))
(check-sat)
