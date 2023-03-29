(declare-const X String)
; ProxyDownCurrentUser-Agent\x3AHost\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in_re X (str.to_re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\u{a}"))))
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (not (str.in_re X (str.to_re "Host:User-Agent:Host:PortScaner\u{a}"))))
(check-sat)

(exit)
