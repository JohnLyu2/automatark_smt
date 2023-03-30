(declare-const X String)
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}")))
(check-sat)

(exit)
