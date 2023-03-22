(declare-const X String)
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "cyber@yahoo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.com\u{a}")))))
; ^[0-9]{6}$
(assert (not (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
