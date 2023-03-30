(declare-const X String)
; media\x2Etop-banners\x2Ecom
(assert (str.in_re X (str.to_re "media.top-banners.com\u{a}")))
(check-sat)

(exit)
