(declare-const X String)
; Host\x3AFrom\x3aKeylogger
(assert (str.in_re X (str.to_re "Host:From:Keylogger\u{a}")))
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}")))
(check-sat)
