(declare-const X String)
; Iterenetbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in_re X (str.to_re "Iterenetbadurl.grandstreetinteractive.com\u{a}"))))
(check-sat)
