(declare-const X String)
; /filename=[^\n]*\x2epng/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".png/i\u{a}")))))
; \\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}
(assert (str.in_re X (re.++ (str.to_re "\u{5c}") ((_ re.loop 1 3) (str.to_re "d")) (str.to_re "\u{5c}") re.allchar (str.to_re "\u{5c}") ((_ re.loop 1 3) (str.to_re "d")) (str.to_re "\u{5c}") re.allchar (str.to_re "\u{5c}") ((_ re.loop 1 3) (str.to_re "d")) (str.to_re "\u{5c}") re.allchar (str.to_re "\u{5c}") ((_ re.loop 1 3) (str.to_re "d")) (str.to_re "\u{a}"))))
; /\x2eru\/\w+\?\d$/miU
(assert (not (str.in_re X (re.++ (str.to_re "/.ru/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "?") (re.range "0" "9") (str.to_re "/miU\u{a}")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in_re X (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
(check-sat)

(exit)
