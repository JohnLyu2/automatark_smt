(declare-const X String)
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (not (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}"))))
; [\t ]+
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "\u{9}") (str.to_re " "))) (str.to_re "\u{a}"))))
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in_re X (str.to_re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\u{a}"))))
(check-sat)

(exit)
