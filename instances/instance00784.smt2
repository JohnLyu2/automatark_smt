(declare-const X String)
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in_re X (str.to_re "User-Agent:etbuviaebe/eqv.bvv\u{a}")))
(check-sat)

(exit)
