(declare-const X String)
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in_re X (str.to_re "Remote<chat>\u{1b}X-Mailer:\u{13}www.proventactics.com\u{a}")))
(check-sat)
