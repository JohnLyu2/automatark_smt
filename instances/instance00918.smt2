(declare-const X String)
; InformationAgentReferer\x3AClient
(assert (str.in_re X (str.to_re "InformationAgentReferer:Client\u{a}")))
(check-sat)

(exit)
