(declare-const X String)
; AgentanswerHost\x3Atool\x2Eworld2\x2EcnTCwhenu\x2Ecom
(assert (str.in_re X (str.to_re "AgentanswerHost:tool.world2.cn\u{13}TCwhenu.com\u{13}\u{a}")))
(check-sat)

(exit)
