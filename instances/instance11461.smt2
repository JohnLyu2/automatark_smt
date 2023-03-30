(declare-const X String)
; \x7D\x7BUser\x3A\x7D\x7BTrojan\x3ASPYSubject\x3A\swww\.fast-finder\.comhostieLogger
(assert (not (str.in_re X (re.++ (str.to_re "}{User:}{Trojan:SPYSubject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.fast-finder.comhostieLogger\u{a}")))))
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (not (str.in_re X (str.to_re "horoscope2YAHOOwww.2-seek.com/searchHost:\u{a}"))))
(check-sat)

(exit)
