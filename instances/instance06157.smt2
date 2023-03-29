(declare-const X String)
; doarauzeraqf\x2fvvv\.ul
(assert (str.in_re X (str.to_re "doarauzeraqf/vvv.ul\u{a}")))
; ^(.*)
(assert (not (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}")))))
(check-sat)

(exit)
