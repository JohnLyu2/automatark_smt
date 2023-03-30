(declare-const X String)
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (str.in_re X (str.to_re "/pagead/ads?waitingisDownload\u{a}")))
(check-sat)

(exit)
