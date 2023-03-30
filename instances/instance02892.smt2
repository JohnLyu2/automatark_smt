(declare-const X String)
; BysooTBUser-Agent\x3A
(assert (str.in_re X (str.to_re "BysooTBUser-Agent:\u{a}")))
(check-sat)

(exit)
