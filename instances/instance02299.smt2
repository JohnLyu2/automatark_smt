(declare-const X String)
; /\/$/U
(assert (not (str.in_re X (str.to_re "///U\u{a}"))))
(check-sat)

(exit)
