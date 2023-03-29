(declare-const X String)
; Fen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.TROJAN-
(assert (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}")))
(check-sat)

(exit)
