(declare-const X String)
; BasicPointsHost\x3Anews
(assert (str.in_re X (str.to_re "BasicPointsHost:news\u{a}")))
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}")))
(check-sat)

(exit)
