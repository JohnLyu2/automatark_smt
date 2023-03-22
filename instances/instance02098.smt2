(declare-const X String)
; PortaUser-Agent\x3AHost\x3A
(assert (not (str.in_re X (str.to_re "PortaUser-Agent:Host:\u{a}"))))
(check-sat)
