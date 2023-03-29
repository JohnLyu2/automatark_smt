(declare-const X String)
; 666Host\x3aWEBCAM-Host\x3a
(assert (str.in_re X (str.to_re "666Host:WEBCAM-Host:\u{a}")))
(check-sat)

(exit)
