(declare-const X String)
; ^(\d{4}-((0[1-9]|1[012])-(0[1-9]|1\d|2[0-8])|(0[13456789]|1[012])-(29|30)|(0[13578]|1[02])-31)|(\d{2}[02468][048]|[13579][26])-02-29) (0[0-9]|1[0-9]|2[0-4]):(60|[0-5][0-9]):(60|[0-5][0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "-") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "-") (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "-31")))) (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "-02-29"))) (str.to_re " ") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) (str.to_re ":") (re.union (str.to_re "60") (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to_re ":") (re.union (str.to_re "60") (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
