(declare-const X String)
; Spywww\x2Elookquick\x2Ecom
(assert (not (str.in_re X (str.to_re "Spywww.lookquick.com\u{a}"))))
(check-sat)
