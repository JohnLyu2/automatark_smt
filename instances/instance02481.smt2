(declare-const X String)
; engineResultUser-Agent\x3A
(assert (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}")))
(check-sat)
