(declare-const X String)
; ovplHost\x3AHost\x3ADownloadUser
(assert (str.in_re X (str.to_re "ovplHost:Host:DownloadUser\u{a}")))
(check-sat)
