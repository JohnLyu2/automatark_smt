(declare-const X String)
; www\x2Ecameup\x2EcomNetTracker
(assert (str.in_re X (str.to_re "www.cameup.com\u{13}NetTracker\u{a}")))
(check-sat)

(exit)
