(declare-const X String)
; freeIPaddrsRunner\+The\+password\+is\x3A
(assert (not (str.in_re X (str.to_re "freeIPaddrsRunner+The+password+is:\u{a}"))))
(check-sat)
