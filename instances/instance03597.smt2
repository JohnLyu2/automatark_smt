(declare-const X String)
; ^[0-9a-zA-Z]+([0-9a-zA-Z]*[-._+])*[0-9a-zA-Z]+@[0-9a-zA-Z]+([-.][0-9a-zA-Z]+)*([0-9a-zA-Z]*[.])[a-zA-Z]{2,6}$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "+")))) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}") (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "."))))
(check-sat)

(exit)
