(declare-const X String)
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}")))))
(check-sat)

(exit)
