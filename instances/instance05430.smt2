(declare-const X String)
; Host\x3A\s+www\x2Ewebfringe\x2Ecom\d+Version\d\x2ElSpywww\x2Elookquick\x2EcomSubject\x3A\x3a\x29\r\n
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webfringe.com") (re.+ (re.range "0" "9")) (str.to_re "Version") (re.range "0" "9") (str.to_re ".lSpywww.lookquick.comSubject::)\u{d}\u{a}\u{13}\u{a}"))))
(check-sat)
