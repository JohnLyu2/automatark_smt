(declare-const X String)
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "encoder") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "%3fsearchresltX-Mailer:\u{13}\u{a}")))))
(check-sat)

(exit)
