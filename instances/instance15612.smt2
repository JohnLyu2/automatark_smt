(declare-const X String)
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in_re X (str.to_re "thereHost:select/Getwww.2-seek.com/search\u{a}"))))
; /^[a-zA-Z0-9]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/\u{a}")))))
(check-sat)

(exit)
