(declare-const X String)
; X-Mailer\x3aUser-Agent\x3A
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}User-Agent:\u{a}")))
(check-sat)
