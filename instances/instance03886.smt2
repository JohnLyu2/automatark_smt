(declare-const X String)
; metaresults\.copernic\.comServer\x00
(assert (str.in_re X (str.to_re "metaresults.copernic.comServer\u{0}\u{a}")))
(check-sat)
