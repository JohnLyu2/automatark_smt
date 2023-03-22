(declare-const X String)
; \.icosearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in_re X (str.to_re ".icosearch.conduit.com<logs@logs.com>\u{a}"))))
(check-sat)
