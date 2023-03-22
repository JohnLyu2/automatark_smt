(declare-const X String)
; EFError.*\x2Fcs\x2Fpop4\x2F[^\n\r]*
(assert (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "/cs/pop4/") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; &
(assert (str.in_re X (str.to_re "&\u{a}")))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}"))))
(check-sat)
