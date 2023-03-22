(declare-const X String)
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in_re X (str.to_re "t=ProtoUser-Agent:quick.qsrch.com\u{a}")))
(check-sat)
