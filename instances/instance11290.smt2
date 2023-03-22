(declare-const X String)
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (str.in_re X (str.to_re "horoscope2YAHOOwww.2-seek.com/searchHost:\u{a}")))
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".m4p/i\u{a}")))))
(check-sat)
