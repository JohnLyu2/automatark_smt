(declare-const X String)
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in_re X (str.to_re "subject:node=LoginNSIS_DOWNLOAD\u{a}"))))
(check-sat)
