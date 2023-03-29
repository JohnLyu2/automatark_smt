(declare-const X String)
; Server\.exeHWPEServer\x3aHost\x3A
(assert (not (str.in_re X (str.to_re "Server.exeHWPEServer:Host:\u{a}"))))
(check-sat)

(exit)
