(declare-const X String)
; /\x2fib2\x2f$/U
(assert (str.in_re X (str.to_re "//ib2//U\u{a}")))
(check-sat)

(exit)
