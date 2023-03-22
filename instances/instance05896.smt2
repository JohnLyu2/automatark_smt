(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}")))
(check-sat)
