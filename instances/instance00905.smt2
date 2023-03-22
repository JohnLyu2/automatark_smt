(declare-const X String)
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}")))
(check-sat)
