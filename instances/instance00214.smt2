(declare-const X String)
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}")))
(check-sat)
