(declare-const X String)
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}"))))
; User-Agent\x3AFiltered
(assert (not (str.in_re X (str.to_re "User-Agent:Filtered\u{a}"))))
(check-sat)

(exit)
