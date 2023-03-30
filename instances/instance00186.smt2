(declare-const X String)
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}")))
(check-sat)

(exit)
