(declare-const X String)
; ^(((25[0-5]|2[0-4][0-9]|19[0-1]|19[3-9]|18[0-9]|17[0-1]|17[3-9]|1[3-6][0-9]|12[8-9]|12[0-6]|1[0-1][0-9]|1[1-9]|[2-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9]))|(192\.(25[0-5]|2[0-4][0-9]|16[0-7]|169|1[0-5][0-9]|1[7-9][0-9]|[1-9][0-9]|[0-9]))|(172\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|1[0-5]|3[2-9]|[4-9][0-9]|[0-9])))\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "19") (re.range "0" "1")) (re.++ (str.to_re "19") (re.range "3" "9")) (re.++ (str.to_re "18") (re.range "0" "9")) (re.++ (str.to_re "17") (re.range "0" "1")) (re.++ (str.to_re "17") (re.range "3" "9")) (re.++ (str.to_re "1") (re.range "3" "6") (re.range "0" "9")) (re.++ (str.to_re "12") (re.range "8" "9")) (re.++ (str.to_re "12") (re.range "0" "6")) (re.++ (str.to_re "1") (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "1" "9")) (re.++ (re.range "2" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9"))) (re.++ (str.to_re "192.") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "16") (re.range "0" "7")) (str.to_re "169") (re.++ (str.to_re "1") (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "7" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9"))) (re.++ (str.to_re "172.") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "5")) (re.++ (str.to_re "3") (re.range "2" "9")) (re.++ (re.range "4" "9") (re.range "0" "9")) (re.range "0" "9")))) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to_re ".") (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
