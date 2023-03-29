(declare-const X String)
; aohobygi\x2fzwiwHost\x3a\x7D\x7Crichfind\x2Ecom
(assert (str.in_re X (str.to_re "aohobygi/zwiwHost:}|richfind.com\u{a}")))
(check-sat)

(exit)
