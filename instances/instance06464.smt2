(declare-const X String)
; ^[\w]{1,}$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; connectedNodes\s+insert\s+haveFTUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "connectedNodes") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "haveFTUser-Agent:\u{a}")))))
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (not (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}"))))
; dialup\x5fvpn\x40hermangroup\x2Eorg\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "dialup_vpn@hermangroup.org") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com\u{a}")))))
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (not (str.in_re X (str.to_re "wlpgskmv/lwzo.qv#www.kliksearch.com\u{a}"))))
(check-sat)

(exit)
