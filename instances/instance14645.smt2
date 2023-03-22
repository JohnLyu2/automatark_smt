(declare-const X String)
; (a|b|c).(a.b)*.b+.c
(assert (not (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c")) re.allchar (re.* (re.++ (str.to_re "a") re.allchar (str.to_re "b"))) re.allchar (re.+ (str.to_re "b")) re.allchar (str.to_re "c\u{a}")))))
; www\x2Eweepee\x2Ecom\w+Owner\x3Aiswww\x2Eemp3finder\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Owner:iswww.emp3finder.com\u{a}"))))
(check-sat)
