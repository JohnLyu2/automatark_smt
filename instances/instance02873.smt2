(declare-const X String)
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in_re X (str.to_re "data.warezclient.comHost:User-Agent:\u{a}"))))
(check-sat)
