(declare-const X String)
; cojud\x2Edmcast\x2EcomAgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (str.in_re X (str.to_re "cojud.dmcast.comAgentHost:insertkeys<keys@hotpop\u{a}")))
(check-sat)

(exit)
