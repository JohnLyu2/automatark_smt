(declare-const X String)
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
