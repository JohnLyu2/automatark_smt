(declare-const X String)
; <h([1-6])>([^<]*)</h([1-6])>
(assert (not (str.in_re X (re.++ (str.to_re "<h") (re.range "1" "6") (str.to_re ">") (re.* (re.comp (str.to_re "<"))) (str.to_re "</h") (re.range "1" "6") (str.to_re ">\u{a}")))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}"))))
(check-sat)

(exit)
