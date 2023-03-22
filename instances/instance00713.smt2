(declare-const X String)
; aboutKeyloggeras\x2Estarware\x2EcomProtoHost\x3a\.asp\?brand=
(assert (not (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}"))))
(check-sat)
