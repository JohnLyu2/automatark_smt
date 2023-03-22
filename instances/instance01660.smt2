(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (not (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}"))))
(check-sat)
