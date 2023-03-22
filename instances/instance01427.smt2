(declare-const X String)
; Host\x3AHost\x3Abody=\x2521\x2521\x2521Optix
(assert (str.in_re X (str.to_re "Host:Host:body=%21%21%21Optix\u{13}\u{a}")))
(check-sat)
