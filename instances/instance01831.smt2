(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgiUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiUser-Agent:\u{a}"))))
(check-sat)
