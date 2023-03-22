(declare-const X String)
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (str.in_re X (str.to_re "www.maxifiles.comServidor.\u{13}\u{a}")))
(check-sat)
