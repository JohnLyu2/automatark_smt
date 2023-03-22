(declare-const X String)
; Xtrawww\x2Einstafinder\x2EcomsearchHost\x3A
(assert (str.in_re X (str.to_re "Xtrawww.instafinder.comsearchHost:\u{a}")))
(check-sat)
