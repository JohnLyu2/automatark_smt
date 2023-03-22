(declare-const X String)
; /filename=[^\n]*\x2eogx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ogx/i\u{a}"))))
; /\x00\.\x00\.\x00[\x2f\x5c]/R
(assert (str.in_re X (re.++ (str.to_re "/\u{0}.\u{0}.\u{0}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{a}"))))
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (str.in_re X (str.to_re "*PORT1*WarezX-Mailer:\u{13}Snake/bonzibuddy/\u{a}")))
(check-sat)
