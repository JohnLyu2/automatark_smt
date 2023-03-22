(declare-const X String)
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}"))))
; ServerAgentX-Mailer\x3aTencentTraveler
(assert (not (str.in_re X (str.to_re "ServerAgentX-Mailer:\u{13}TencentTraveler\u{a}"))))
(check-sat)
