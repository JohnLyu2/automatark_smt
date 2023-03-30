(declare-const X String)
; PALTALKSubject\x3A\x7D\x7BUser\x3A
(assert (not (str.in_re X (str.to_re "PALTALKSubject:}{User:\u{a}"))))
(check-sat)

(exit)
