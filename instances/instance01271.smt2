(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}"))))
(check-sat)

(exit)
