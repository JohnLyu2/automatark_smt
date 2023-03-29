(declare-const X String)
; \x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (str.in_re X (str.to_re "/images/nocache/tr/gca/m.gif?\u{a}")))
(check-sat)

(exit)
