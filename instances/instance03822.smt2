(declare-const X String)
; ^((((0[1-9]|[1-2][0-9]|3[0-1])[./-](0[13578]|10|12))|((0[1-9]|[1-2][0-9])[./-](02))|(((0[1-9])|([1-2][0-9])|(30))[./-](0[469]|11)))[./-]((19\d{2})|(2[012]\d{2})))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (str.to_re "02")) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")))) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) ((_ re.loop 2 2) (re.range "0" "9"))))))))
(check-sat)
