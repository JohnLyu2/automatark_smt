(declare-const X String)
; ^(([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+)|((([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+))\:)*(([1-9][0-9]*)|((([0])|([1-9][0-9]*))\.[0-9]+)))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re ":"))) (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.union (str.to_re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to_re ".") (re.+ (re.range "0" "9")))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
