(declare-const X String)
; \x2Fbar_pl\x2Fb\.fcgiHost\x3AHost\x3AClass\x2Ftoolbar\x2Fico\x2FGoogleLogsencoderserver
(assert (not (str.in_re X (str.to_re "/bar_pl/b.fcgiHost:Host:Class/toolbar/ico/GoogleLogsencoderserver\u{a}"))))
(check-sat)

(exit)
