(declare-const X String)
; ^([\w\d\-\.]+)@{1}(([\w\d\-]{1,67})|([\w\d\-]+\.[\w\d\-]{1,67}))\.(([a-zA-Z\d]{2,4})(\.[a-zA-Z\d]{2})?)$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (str.to_re "@")) (re.union ((_ re.loop 1 67) (re.union (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 1 67) (re.union (re.range "0" "9") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".\u{a}") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
(check-sat)

(exit)
