(declare-const X String)
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in_re X (str.to_re "shprrprt-cs-\u{13}Pre/ta/NEWS/\u{a}")))
(check-sat)
