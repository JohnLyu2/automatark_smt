(declare-const X String)
; ^(000000[1-9])$|^(00000[1-9][0-9])$|^(0000[1-9][0-9][0-9])$|^(000[1-9][0-9][0-9][0-9])$|^(00[1-9][0-9][0-9][0-9][0-9])$|^(0[1-9][0-9][0-9][0-9][0-9][0-9])$|^([1-9][0-9][0-9][0-9][0-9][0-9][0-9])$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "000000") (re.range "1" "9")) (re.++ (str.to_re "00000") (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to_re "0000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "000") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "00") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "0") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))))
(check-sat)

(exit)
