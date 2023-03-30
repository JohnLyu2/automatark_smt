(declare-const X String)
; /filename=[^\n]*\x2exap/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xap/i\u{a}")))))
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (not (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}"))))
; ^.{0,0}
(assert (str.in_re X (re.++ ((_ re.loop 0 0) re.allchar) (str.to_re "\u{a}"))))
(check-sat)

(exit)
