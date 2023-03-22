(declare-const X String)
; AgentHWAEUser-Agent\x3A
(assert (str.in_re X (str.to_re "AgentHWAEUser-Agent:\u{a}")))
(check-sat)
