(declare-const X String)
; Prodaosearch\x2EcomReferer\x3A007User-Agent\x3A
(assert (str.in_re X (str.to_re "Prodaosearch.comReferer:007User-Agent:\u{a}")))
(check-sat)
