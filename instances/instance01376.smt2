(declare-const X String)
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}wlpgskmv/lwzo.qv#Subject:Activity\u{a}")))
(check-sat)

(exit)
