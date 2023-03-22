(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
(check-sat)
