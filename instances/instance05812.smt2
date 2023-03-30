(declare-const X String)
; Server\x3AWordTheHost\x3afrom
(assert (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}")))
(check-sat)

(exit)
