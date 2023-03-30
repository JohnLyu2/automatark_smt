(declare-const X String)
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}"))))
(check-sat)

(exit)
