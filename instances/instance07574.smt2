(declare-const X String)
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}"))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
