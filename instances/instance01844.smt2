(declare-const X String)
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (str.in_re X (str.to_re "hirmvtg/ggqh.kqh\u{1b}Surveillance\u{13}Host:\u{a}")))
(check-sat)
