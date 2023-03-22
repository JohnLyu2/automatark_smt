(declare-const X String)
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (str.in_re X (str.to_re "EIcdpnode=reportUID/ServertoX-Mailer:\u{13}\u{a}")))
(check-sat)
