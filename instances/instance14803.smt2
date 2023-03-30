(declare-const X String)
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}")))
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (str.in_re X (str.to_re "Stealthwww.myarmory.comresultsmaster.com\u{13}\u{a}")))
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:/ezsb\u{a}"))))
(check-sat)

(exit)
