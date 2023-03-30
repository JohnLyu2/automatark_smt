(declare-const X String)
; media\x2Edxcdirect\x2Ecom
(assert (not (str.in_re X (str.to_re "media.dxcdirect.com\u{a}"))))
(check-sat)

(exit)
