(declare-const X String)
; /\x2f\x3fdp\x3d[A-Z0-9]{50}&cb\x3d[0-9]{9}/Ui
(assert (str.in_re X (re.++ (str.to_re "//?dp=") ((_ re.loop 50 50) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "&cb=") ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "/Ui\u{a}"))))
(check-sat)

(exit)
