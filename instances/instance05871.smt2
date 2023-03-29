(declare-const X String)
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (not (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}"))))
(check-sat)

(exit)
