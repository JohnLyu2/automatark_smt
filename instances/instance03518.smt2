(declare-const X String)
; www\.iggsey\.com\sX-Mailer\x3a[^\n\r]*on\x3Acom\x3E2\x2E41Client
(assert (str.in_re X (re.++ (str.to_re "www.iggsey.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "X-Mailer:\u{13}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "on:com>2.41Client\u{a}"))))
(check-sat)

(exit)
