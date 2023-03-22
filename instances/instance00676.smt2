(declare-const X String)
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (not (str.in_re X (str.to_re "User-Agent:etbuviaebe/eqv.bvv\u{a}"))))
(check-sat)
