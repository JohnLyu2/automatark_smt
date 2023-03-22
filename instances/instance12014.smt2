(declare-const X String)
; ^(01)[0-9]{8}
(assert (str.in_re X (re.++ (str.to_re "01") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^[+][0-9]\d{2}-\d{3}-\d{4}$
(assert (str.in_re X (re.++ (str.to_re "+") (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
