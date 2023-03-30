(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}")))
(check-sat)

(exit)
