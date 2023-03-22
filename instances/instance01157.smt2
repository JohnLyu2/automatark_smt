(declare-const X String)
; www\x2Ezhongsou\x2Ecom\w+FTX-Mailer\x3A
(assert (str.in_re X (re.++ (str.to_re "www.zhongsou.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "FTX-Mailer:\u{13}\u{a}"))))
(check-sat)
