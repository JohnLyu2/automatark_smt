(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}")))
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (not (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}"))))
(check-sat)

(exit)
