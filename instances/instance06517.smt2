(declare-const X String)
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (str.in_re X (re.++ (str.to_re "<textarea") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</textarea>\u{a}"))))
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:/ezsb\u{a}"))))
(check-sat)

(exit)
