(declare-const X String)
; u=with\x3AHBand,Deathhoroscope2
(assert (not (str.in_re X (str.to_re "u=with:HBand,Deathhoroscope2\u{a}"))))
(check-sat)

(exit)
