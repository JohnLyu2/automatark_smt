(declare-const X String)
; GREATDriplineisUser-Agent\x3Alogs===========\x3E
(assert (not (str.in_re X (str.to_re "GREATDriplineisUser-Agent:logs===========>\u{a}"))))
(check-sat)
