(declare-const X String)
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in_re X (str.to_re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\u{a}"))))
(check-sat)
