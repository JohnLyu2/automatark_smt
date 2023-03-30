(declare-const X String)
; Host\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}as.starware.com\u{a}"))))
(check-sat)

(exit)
