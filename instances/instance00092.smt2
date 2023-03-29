(declare-const X String)
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "/") (str.to_re "+") (str.to_re "="))) (str.to_re "/AGPi\u{a}")))))
(check-sat)

(exit)
