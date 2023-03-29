(declare-const X String)
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (not (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:/ezsb\u{a}")))))
(check-sat)

(exit)
