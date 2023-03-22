(declare-const X String)
; mywayUser-Agent\x3AHost\x3ARedirector\x22body=FeaR\x25200\x2E2\x2E0\x2520Online\x3A\x2520\x5BIP_
(assert (str.in_re X (str.to_re "mywayUser-Agent:Host:Redirector\u{22}body=FeaR%200.2.0%20Online:%20[IP_\u{a}")))
(check-sat)
