(declare-const X String)
; aboutKeyloggeras\x2Estarware\x2EcomProtoHost\x3a\.asp\?brand=
(assert (str.in_re X (str.to_re "aboutKeyloggeras.starware.comProtoHost:.asp?brand=\u{a}")))
; /\x2emks([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mks") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
