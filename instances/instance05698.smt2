(declare-const X String)
; Subject\x3ALOGX-Mailer\x3a
(assert (not (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}"))))
(check-sat)

(exit)
