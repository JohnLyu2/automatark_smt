(declare-const X String)
; ^((0?[13578]|10|12)(-|\/)(([1-9])|(0[1-9])|([12])([0-9]?)|(3[01]?))(-|\/)((19)([2-9])(\d{1})|(20)([01])(\d{1})|([8901])(\d{1}))|(0?[2469]|11)(-|\/)(([1-9])|(0[1-9])|([12])([0-9]?)|(3[0]?))(-|\/)((19)([2-9])(\d{1})|(20)([01])(\d{1})|([8901])(\d{1})))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (re.union (str.to_re "0") (str.to_re "1"))))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "19") (re.range "2" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "20") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "8") (str.to_re "9") (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (str.to_re "0")))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "19") (re.range "2" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "20") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "8") (str.to_re "9") (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9")))))) (str.to_re "\u{a}"))))
(check-sat)
