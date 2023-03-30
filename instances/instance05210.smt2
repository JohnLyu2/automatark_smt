(declare-const X String)
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}")))
(check-sat)

(exit)
