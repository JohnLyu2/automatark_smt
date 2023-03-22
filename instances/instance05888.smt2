(declare-const X String)
; Host\x3AconfigINTERNAL\.iniUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "Host:configINTERNAL.iniUser-Agent:\u{a}"))))
(check-sat)
