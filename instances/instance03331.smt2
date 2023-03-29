(declare-const X String)
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (str.in_re X (str.to_re "for/products/spyblocs/\u{13}Host:ocllceclbhs/gth\u{a}")))
(check-sat)

(exit)
