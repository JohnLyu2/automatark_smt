(declare-const X String)
; ContactHost\x3aHost\x3AFloodedFictionalUser-Agent\x3AHost\x3a
(assert (str.in_re X (str.to_re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\u{a}")))
(check-sat)
