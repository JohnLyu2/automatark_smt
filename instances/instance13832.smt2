(declare-const X String)
; Host\x3A\w+Host\x3AUser-Agent\x3ATPSystemad\x2Esearchsquire\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:User-Agent:TPSystemad.searchsquire.com\u{a}"))))
; xbqyosoe\x2fcpvmdll\x3F
(assert (not (str.in_re X (str.to_re "xbqyosoe/cpvmdll?\u{a}"))))
; ProtoSubject\x3asource\=IncrediFindProjectAgentHost\x3AHost\x3AHost\x3A
(assert (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}")))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.searchwords.com\u{a}"))))
; /\*[^\/]+/
(assert (str.in_re X (re.++ (str.to_re "/*") (re.+ (re.comp (str.to_re "/"))) (str.to_re "/\u{a}"))))
(check-sat)
