(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
(check-sat)

(exit)
