(declare-const X String)
; Host\x3ASubject\x3Awhenu\x2EcomHost\x3Awww\x2Evip-se\x2Ecom
(assert (not (str.in_re X (str.to_re "Host:Subject:whenu.com\u{1b}Host:www.vip-se.com\u{13}\u{a}"))))
(check-sat)

(exit)
