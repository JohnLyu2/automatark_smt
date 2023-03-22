(declare-const X String)
; dll\x3Fbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in_re X (str.to_re "dll?badurl.grandstreetinteractive.com\u{a}"))))
(check-sat)
