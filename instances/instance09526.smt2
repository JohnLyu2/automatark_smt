(declare-const X String)
; \D
(assert (str.in_re X (re.++ (re.comp (re.range "0" "9")) (str.to_re "\u{a}"))))
; weatherSubject\x3aX-Mailer\x3aTOOLBAR\x2Fnewsurfer4\x2F
(assert (str.in_re X (str.to_re "weatherSubject:X-Mailer:\u{13}TOOLBAR/newsurfer4/\u{a}")))
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\w+searchreslt\x7D\x7BSysuptime\x3ASubject\x3AHANDY
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:Subject:HANDY\u{a}"))))
(check-sat)

(exit)
