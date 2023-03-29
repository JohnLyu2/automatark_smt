(declare-const X String)
; Pleasewww\x2Ewebfringe\x2Ecom\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (str.in_re X (str.to_re "Pleasewww.webfringe.com\u{3}\u{0}\u{1c}\u{0}\u{0}\u{0}\u{0}\u{0}\u{1}Furax\u{a}")))
(check-sat)

(exit)
