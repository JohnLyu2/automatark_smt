(declare-const X String)
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in_re X (str.to_re "vvvjkhmbgnbbw/qbn\u{1b}(robert@blackcastlesoft.com)\u{a}")))
(check-sat)

(exit)
