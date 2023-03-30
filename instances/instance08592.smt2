(declare-const X String)
; forum=related\x2Eyok\x2Ecom\sStarted\!$3
(assert (not (str.in_re X (re.++ (str.to_re "forum=related.yok.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Started!3\u{a}")))))
; xpsp2-\s+spyblpat.*is\x2EphpBarFrom\x3A
(assert (str.in_re X (re.++ (str.to_re "xpsp2-") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is.phpBarFrom:\u{a}"))))
(check-sat)

(exit)
