(declare-const X String)
; User-Agent\x3A\dServer
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Server\u{a}"))))
; is\w+gdvsotuqwsg\x2fdxt\.hd
(assert (str.in_re X (re.++ (str.to_re "is") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hd\u{a}"))))
; S\x3aUsers\x5cIterenetSend=User-Agent\x3A
(assert (str.in_re X (str.to_re "S:Users\u{5c}IterenetSend=User-Agent:\u{a}")))
(check-sat)

(exit)
