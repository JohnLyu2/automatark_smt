(declare-const X String)
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in_re X (str.to_re "Handyst=ClassStopperHost:SpamBlockerUtility\u{a}"))))
(check-sat)

(exit)
