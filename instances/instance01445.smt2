(declare-const X String)
; /^\x2f\x3fptrxcz\x5f[a-zA-Z0-9]{30}$/Ui
(assert (str.in_re X (re.++ (str.to_re "//?ptrxcz_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{a}"))))
(check-sat)

(exit)
