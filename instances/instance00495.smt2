(declare-const X String)
; User-Agent\x3AX-Mailer\x3aHost\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}Host:dcww.dmcast.com\u{a}")))
(check-sat)
