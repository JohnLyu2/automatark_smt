(declare-const X String)
; www\x2Elookster\x2Enet\s+Host\x3ADesktopBlade
(assert (not (str.in_re X (re.++ (str.to_re "www.lookster.net") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:DesktopBlade\u{a}")))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (str.in_re X (re.++ (str.to_re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to_re "ZOMBIES_HTTP_GET\u{a}"))))
(check-sat)

(exit)
