(declare-const X String)
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}")))
(check-sat)
