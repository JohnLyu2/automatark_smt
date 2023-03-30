(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (str.in_re X (str.to_re "LOGNetBusCookie:Toolbar\u{a}")))
; /\x2fib2\x2f$/U
(assert (not (str.in_re X (str.to_re "//ib2//U\u{a}"))))
(check-sat)

(exit)
