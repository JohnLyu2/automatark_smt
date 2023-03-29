(declare-const X String)
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}")))))
(check-sat)

(exit)
