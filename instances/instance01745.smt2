(declare-const X String)
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}Referer:sponsor2.ucmore.com\u{a}")))
(check-sat)

(exit)
