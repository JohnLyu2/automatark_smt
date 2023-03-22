(declare-const X String)
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHost:\u{a}"))))
(check-sat)
