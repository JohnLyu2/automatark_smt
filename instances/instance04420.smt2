(declare-const X String)
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (str.in_re X (str.to_re "Host:User-Agent:Host:PortScaner\u{a}")))
(check-sat)
