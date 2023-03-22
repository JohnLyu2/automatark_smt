(declare-const X String)
; ad\x2Esearchsquire\x2Ecom\s+ocllceclbhs\x2fgth
(assert (not (str.in_re X (re.++ (str.to_re "ad.searchsquire.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ocllceclbhs/gth\u{a}")))))
(check-sat)
