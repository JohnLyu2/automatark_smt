(declare-const X String)
; Googlelog\=\x7BIP\x3APG=SPEEDBAR
(assert (not (str.in_re X (str.to_re "Googlelog={IP:PG=SPEEDBAR\u{a}"))))
(check-sat)
