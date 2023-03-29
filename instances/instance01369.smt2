(declare-const X String)
; comLOGUser-Agent\x3Aistsvcwww\x2Eoemji\x2EcomSystemSleuth
(assert (not (str.in_re X (str.to_re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\u{13}\u{a}"))))
(check-sat)

(exit)
