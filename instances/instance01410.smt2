(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (not (str.in_re X (str.to_re "LOGNetBusCookie:Toolbar\u{a}"))))
(check-sat)
