(declare-const X String)
; name\x3dEmailbadurl\x2Egrandstreetinteractive\x2EcomHost\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in_re X (str.to_re "name=Emailbadurl.grandstreetinteractive.comHost:stepwww.kornputers.com\u{a}"))))
; /\r\n\r\nsession\x3a\d{1,7}$/
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}\u{d}\u{a}session:") ((_ re.loop 1 7) (re.range "0" "9")) (str.to_re "/\u{a}"))))
; Host\x3AHost\x3AX-Mailer\x3a
(assert (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}")))
(check-sat)

(exit)
