(declare-const X String)
; fsbuffshprrprt-cs-Host\x3A
(assert (not (str.in_re X (str.to_re "fsbuffshprrprt-cs-\u{13}Host:\u{a}"))))
(check-sat)
