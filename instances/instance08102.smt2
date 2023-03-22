(declare-const X String)
; ^( [1-9]|[1-9]|0[1-9]|10|11|12)[0-5]\d$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re " ") (re.range "1" "9")) (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "10") (str.to_re "11") (str.to_re "12")) (re.range "0" "5") (re.range "0" "9") (str.to_re "\u{a}")))))
; www\x2Ezhongsou\x2Ecom\sisHost\x3Aare
(assert (not (str.in_re X (re.++ (str.to_re "www.zhongsou.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "isHost:are\u{a}")))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (not (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.ini\u{a}")))))
; software.*com\x2Findex\.php\?tpid=\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (str.in_re X (re.++ (str.to_re "software") (re.* re.allchar) (str.to_re "com/index.php?tpid=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:/toolbar/supremetb\u{a}"))))
(check-sat)
