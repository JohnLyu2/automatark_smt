(declare-const X String)
; ^(((2|8|9)\d{2})|((02|08|09)\d{2})|([1-9]\d{3}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Host:\u{a}"))))
; ^(((0[1-9]|[12][0-9]|3[01])([\.])(0[13578]|10|12)([\.])((19[0-9][0-9])|(2[0-9][0-9][0-9])))|(([0][1-9]|[12][0-9]|30)([\.])(0[469]|11)([\.])((19[0-9][0-9])|(2[0-9][0-9][0-9])))|((0[1-9]|1[0-9]|2[0-8])([\.])(02)([\.])((19[0-9][0-9])|(2[0-9][0-9][0-9])))|((29)([\.])(02)([\.])([02468][048]00))|((29)([\.])(02)([\.])([13579][26]00))|((29)([\.])(02)([\.])([0-9][0-9][0][48]))|((29)([\.])(02)([\.])([0-9][0-9][2468][048]))|((29)([\.])(02)([\.])([0-9][0-9][13579][26])))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re ".") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (str.to_re ".") (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (str.to_re ".") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re ".") (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re ".02.") (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.++ (str.to_re "29.02.") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00")) (re.++ (str.to_re "29.02.") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00")) (re.++ (str.to_re "29.02.") (re.range "0" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "29.02.") (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (str.to_re "29.02.") (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
