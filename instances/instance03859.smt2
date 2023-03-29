(declare-const X String)
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}"))))
(check-sat)

(exit)
