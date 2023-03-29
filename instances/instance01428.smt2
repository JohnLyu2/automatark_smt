(declare-const X String)
; httphostHost\x3aAgent\x22
(assert (not (str.in_re X (str.to_re "httphostHost:Agent\u{22}\u{a}"))))
(check-sat)

(exit)
