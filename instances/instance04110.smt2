(declare-const X String)
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (str.in_re X (str.to_re "Host:hirmvtg/ggqh.kqh\u{1b}verA-Spy\u{a}")))
(check-sat)
