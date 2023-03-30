(declare-const X String)
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}")))
(check-sat)

(exit)
