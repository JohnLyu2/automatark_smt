(declare-const X String)
; User-Agent\x3AServerHost\x3A
(assert (str.in_re X (str.to_re "User-Agent:ServerHost:\u{a}")))
; Subject\x3ALOGX-Mailer\x3a
(assert (str.in_re X (str.to_re "Subject:LOGX-Mailer:\u{13}\u{a}")))
(check-sat)

(exit)
