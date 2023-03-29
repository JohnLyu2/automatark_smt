(declare-const X String)
; Host\x3AHost\x3AUser-Agent\x3AServerad\x2Emokead\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:Host:User-Agent:Serverad.mokead.com\u{a}"))))
(check-sat)

(exit)
