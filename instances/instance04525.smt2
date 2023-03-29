(declare-const X String)
; User-Agent\x3ABasedUser-Agent\x3A
(assert (str.in_re X (str.to_re "User-Agent:BasedUser-Agent:\u{a}")))
(check-sat)

(exit)
