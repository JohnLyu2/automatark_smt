(declare-const X String)
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{a}")))
(check-sat)
