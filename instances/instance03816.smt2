(declare-const X String)
; ^(((0[0-9])|(1[0-9])|(2[0-3])):[0-5][0-9])$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
