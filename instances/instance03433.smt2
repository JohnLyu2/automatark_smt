(declare-const X String)
; TPSystemad\x2Esearchsquire\x2Ecomv\x2EHost\x3Ahotbar
(assert (str.in_re X (str.to_re "TPSystemad.searchsquire.comv.Host:hotbar\u{a}")))
(check-sat)

(exit)
