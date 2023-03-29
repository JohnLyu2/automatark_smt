(declare-const X String)
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (not (str.in_re X (str.to_re "*PORT1*WarezX-Mailer:\u{13}Snake/bonzibuddy/\u{a}"))))
(check-sat)

(exit)
