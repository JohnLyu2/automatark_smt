(declare-const X String)
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}"))))
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (str.in_re X (str.to_re "wlpgskmv/lwzo.qv#www.kliksearch.com\u{a}")))
(check-sat)
