(declare-const X String)
; /\x2epaq8o([\?\x5c\x2f]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.paq8o") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; couponbar\.coupons\.comKeystrokesSubject\x3A
(assert (not (str.in_re X (str.to_re "couponbar.coupons.comKeystrokesSubject:\u{a}"))))
; /\x2ertf([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rtf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
