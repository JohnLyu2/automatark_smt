(declare-const X String)
; \x5D\x2520\x5BPort_X-Mailer\x3AX-Mailer\x3awww\.actualnames\.comwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "]%20[Port_X-Mailer:\u{13}X-Mailer:\u{13}www.actualnames.comwebsearch.getmirar.com\u{a}"))))
(check-sat)
