(declare-const X String)
; ^(([0-9])|([0-1][0-9])|([2][0-3])):(([0-9])|([0-5][0-9]))$
(assert (str.in_re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.union (re.range "0" "9") (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
