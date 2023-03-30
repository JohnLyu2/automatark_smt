(declare-const X String)
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (not (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Warez") (re.* re.allchar) (str.to_re "X-Mailer:\u{13}Subject:KEY=\u{a}")))))
(check-sat)

(exit)
