(declare-const X String)
; Host\x3AWordmyway\.comhoroscope2Host
(assert (not (str.in_re X (str.to_re "Host:Wordmyway.comhoroscope2Host\u{a}"))))
(check-sat)

(exit)
