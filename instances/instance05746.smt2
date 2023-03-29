(declare-const X String)
; Host\x3AHost\x3AX-Mailer\x3a
(assert (not (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)
