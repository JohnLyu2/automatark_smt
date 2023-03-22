(declare-const X String)
; ZC-BridgeHost\x3ASubject\x3aas\x2Estarware\x2Ecom
(assert (str.in_re X (str.to_re "ZC-BridgeHost:Subject:as.starware.com\u{a}")))
(check-sat)
