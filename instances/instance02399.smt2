(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (str.in_re X (str.to_re "stats.drivecleaner.com\u{13}Exciteasdbiz.biz\u{a}")))
(check-sat)

(exit)
