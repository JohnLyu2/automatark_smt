(declare-const X String)
; WindowsAcmeReferer\x3A
(assert (str.in_re X (str.to_re "WindowsAcmeReferer:\u{a}")))
(check-sat)

(exit)
