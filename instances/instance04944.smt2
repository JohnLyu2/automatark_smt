(declare-const X String)
; spyblpatHost\x3Ais\x2EphpBarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hd
(assert (str.in_re X (str.to_re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\u{a}")))
(check-sat)

(exit)
