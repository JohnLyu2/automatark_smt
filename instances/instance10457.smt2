(declare-const X String)
; /filename=[^\n]*\x2epub/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pub/i\u{a}")))))
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in_re X (str.to_re "password;1;OptixOwner:Barwww.accoona.com\u{a}"))))
(check-sat)
