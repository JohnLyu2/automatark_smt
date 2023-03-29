(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "www.sogou.comUser-Agent:\u{a}"))))
(check-sat)

(exit)
