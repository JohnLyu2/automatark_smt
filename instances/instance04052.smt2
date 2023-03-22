(declare-const X String)
; updates\x5D\x2520\x5BPort_NETObserve
(assert (str.in_re X (str.to_re "updates]%20[Port_NETObserve\u{a}")))
(check-sat)
