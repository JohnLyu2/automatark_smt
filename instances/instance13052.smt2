(declare-const X String)
; media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (str.to_re "media.dxcdirect.com\u{a}"))))
; Uin=encodernotification\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (str.in_re X (str.to_re "Uin=encodernotification\u{13}/toolbar/Host:User-Agent:\u{a}")))
(check-sat)

(exit)
