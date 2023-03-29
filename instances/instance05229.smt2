(declare-const X String)
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (str.in_re X (str.to_re "ServerAgentX-Mailer:\u{13}TencentTraveler\u{a}")))
(check-sat)

(exit)
