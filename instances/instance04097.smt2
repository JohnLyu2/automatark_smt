(declare-const X String)
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}"))))
(check-sat)

(exit)
