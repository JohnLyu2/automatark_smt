(declare-const X String)
; MailerHost\x3AUser-Agent\x3A
(assert (str.in_re X (str.to_re "MailerHost:User-Agent:\u{a}")))
(check-sat)

(exit)
