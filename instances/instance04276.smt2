(declare-const X String)
; ^((((0[13578])|([13578])|(1[02]))[\/](([1-9])|([0-2][0-9])|(3[01])))|(((0[469])|([469])|(11))[\/](([1-9])|([0-2][0-9])|(30)))|((2|02)[\/](([1-9])|([0-2][0-9]))))[\/]\d{4}$|^\d{4}$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")) (str.to_re "/") (re.union (re.range "1" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11") (str.to_re "4") (str.to_re "6") (str.to_re "9")) (str.to_re "/") (re.union (re.range "1" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (str.to_re "30"))) (re.++ (re.union (str.to_re "2") (str.to_re "02")) (str.to_re "/") (re.union (re.range "1" "9") (re.++ (re.range "0" "2") (re.range "0" "9"))))) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)
