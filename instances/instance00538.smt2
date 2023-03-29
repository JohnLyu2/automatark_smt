(declare-const X String)
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}"))))
(check-sat)

(exit)
