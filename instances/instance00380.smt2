(declare-const X String)
; Yeah\!User-Agent\x3a
(assert (str.in_re X (str.to_re "Yeah!User-Agent:\u{a}")))
(check-sat)
