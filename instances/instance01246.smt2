(declare-const X String)
; \b(0[0-9]|1[0-1])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])(\:)(0[0-9]|1[0-9]|2[0-9]|3[0-9]|4[0-9]|5[0-9])\b
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "1"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "9")) (re.++ (str.to_re "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "9"))) (str.to_re ":") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "9")) (re.++ (str.to_re "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
