(declare-const X String)
; We\d+pjpoptwql\x2frlnjX-Mailer\x3a
(assert (str.in_re X (re.++ (str.to_re "We") (re.+ (re.range "0" "9")) (str.to_re "pjpoptwql/rlnjX-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)
