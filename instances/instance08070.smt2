(declare-const X String)
; (((0*[1-9]|[12][0-9]|3[01])([-./])(0*[13578]|10|12)([-./])(\d{4}))|((0*[1-9]|[12][0-9]|30)([-./])(0*[469]|11)([-./])(\d{4}))|((0*[1-9]|1[0-9]|2[0-8])([-./])(02|2)([-./])(\d{4}))|((29)(\.|-|\/)(02|2)([-./])([02468][048]00))|((29)([-./])(02|2)([-./])([13579][26]00))|((29)([-./])(02|2)([-./])([0-9][0-9][0][48]))|((29)([-./])(02|2)([-./])([0-9][0-9][2468][048]))|((29)([-./])(02|2)([-./])([0-9][0-9][13579][26])))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.* (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (re.* (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.* (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (re.++ (re.* (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.* (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "02") (str.to_re "2")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "29") (re.union (str.to_re ".") (str.to_re "-") (str.to_re "/")) (re.union (str.to_re "02") (str.to_re "2")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00")) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "02") (str.to_re "2")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00")) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "02") (str.to_re "2")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "02") (str.to_re "2")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.union (str.to_re "02") (str.to_re "2")) (re.union (str.to_re "-") (str.to_re ".") (str.to_re "/")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "\u{a}")))))
; /infor\.php\?uid=\w{52}/Ui
(assert (str.in_re X (re.++ (str.to_re "/infor.php?uid=") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/Ui\u{a}"))))
(check-sat)
