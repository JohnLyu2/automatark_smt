(declare-const X String)
; User-Agent\x3aUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
(check-sat)

(exit)
