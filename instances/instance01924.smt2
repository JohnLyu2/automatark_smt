(declare-const X String)
; X-Mailer\x3AisSubject\x3a
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}isSubject:\u{a}"))))
(check-sat)
