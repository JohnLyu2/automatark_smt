(declare-const X String)
; dialup\x5fvpn\x40hermangroup\x2Eorg\s+www\x2Epeer2mail\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "dialup_vpn@hermangroup.org") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}"))))
(check-sat)

(exit)
