(declare-const X String)
; Subject\x3aHostYWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (str.to_re "Subject:HostYWRtaW46cGFzc3dvcmQ\u{a}")))
(check-sat)

(exit)
