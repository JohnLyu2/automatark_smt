(declare-const X String)
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (not (str.in_re X (str.to_re "/ta/NEWS/password;1;Optix\u{a}"))))
(check-sat)
