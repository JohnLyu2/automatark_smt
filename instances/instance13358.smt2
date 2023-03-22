(declare-const X String)
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
; weather2ResultX-Sender\x3A
(assert (str.in_re X (str.to_re "weather2ResultX-Sender:\u{13}\u{a}")))
(check-sat)
