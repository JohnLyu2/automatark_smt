(declare-const X String)
; pass=Referer\x3ASurveillance
(assert (not (str.in_re X (str.to_re "pass=Referer:Surveillance\u{13}\u{a}"))))
(check-sat)

(exit)
