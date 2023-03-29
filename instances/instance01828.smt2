(declare-const X String)
; /\x253D$/Im
(assert (str.in_re X (str.to_re "/%3D/Im\u{a}")))
(check-sat)

(exit)
