(declare-const X String)
; ^(([\w][\w\-\.]*)\.)?([\w][\w\-]+)(\.([\w][\w\.]*))?$
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re ".") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.opt (re.++ (str.to_re ".") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* (re.union (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))
(check-sat)

(exit)
