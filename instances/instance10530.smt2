(declare-const X String)
; /\x2eabc([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.abc") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (str.in_re X (str.to_re "horoscope2YAHOOwww.2-seek.com/searchHost:\u{a}")))
; 05\d{8}
(assert (str.in_re X (re.++ (str.to_re "05") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; this\w+c\.goclick\.com\d
(assert (not (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "c.goclick.com") (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
