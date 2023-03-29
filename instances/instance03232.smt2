(declare-const X String)
; AID\x2FHost\x3aHourskl\x2Esearch\x2Eneed2find\x2EcomHost\x3aHost\x3A
(assert (str.in_re X (str.to_re "AID/Host:Hourskl.search.need2find.comHost:Host:\u{a}")))
(check-sat)

(exit)
