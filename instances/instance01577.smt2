(declare-const X String)
; ^([a-zA-Z0-9]+[._-])*[a-zA-Z0-9]+@(([a-zA-Z0-9]+|([a-zA-Z0-9]+[.-])+)[a-zA-Z0-9]+\.[a-zA-Z]{2,4}|([a-zA-Z]\.com))$
(assert (str.in_re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "_") (str.to_re "-")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "@") (re.union (re.++ (re.union (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "-"))))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ".com"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
