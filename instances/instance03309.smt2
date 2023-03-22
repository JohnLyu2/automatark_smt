(declare-const X String)
; www\x2Erichfind\x2EcomHost\x3A
(assert (not (str.in_re X (str.to_re "www.richfind.comHost:\u{a}"))))
(check-sat)
