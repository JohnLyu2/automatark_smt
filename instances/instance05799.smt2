(declare-const X String)
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (str.in_re X (str.to_re "Host:AddressDaemonUser-Agent:User-Agent:\u{a}")))
(check-sat)
