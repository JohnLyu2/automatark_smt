(declare-const X String)
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (not (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}"))))
; /^\/[a-z0-9]+\/access\.log$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/access.log/Ui\u{a}")))))
(check-sat)

(exit)
