(declare-const X String)
; Port\s+AgentHost\x3Ainsertkeys\x3Ckeys\x40hotpop
(assert (not (str.in_re X (re.++ (str.to_re "Port") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AgentHost:insertkeys<keys@hotpop\u{a}")))))
(check-sat)

(exit)
