(declare-const X String)
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (not (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}"))))
(check-sat)

(exit)
