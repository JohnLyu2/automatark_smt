(declare-const X String)
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (not (str.in_re X (str.to_re "/cs/pop4/A-Spywww.yoogee.com\u{13}\u{a}"))))
(check-sat)
