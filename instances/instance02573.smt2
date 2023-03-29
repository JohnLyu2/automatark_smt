(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (str.in_re X (str.to_re "Subject:SpywareSpyBuddy\u{a}")))
(check-sat)

(exit)
