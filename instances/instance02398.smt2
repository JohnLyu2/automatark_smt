(declare-const X String)
; Host\x3AIPAsynchaveAdToolszopabora\x2Einfo
(assert (str.in_re X (str.to_re "Host:IPAsynchaveAdToolszopabora.info\u{a}")))
(check-sat)

(exit)
