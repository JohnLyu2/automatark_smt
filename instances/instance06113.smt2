(declare-const X String)
; ^(((((0[1-9])|(1\d)|(2[0-8]))[/.-]((0[1-9])|(1[0-2])))|((31[/.-]((0[13578])|(1[02])))|((29|30)[/.-]((0[1,3-9])|(1[0-2])))))[/.-]((000[^0])&([0-9][0-9][0-9][0-9]))|(29[/.-]02[/.-](([0-9][0-9](([02468][48])|([2468][048])|([13579][26])))|((([02468][48])|([2468][048])|([13579][26]))00))))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2")))) (re.++ (str.to_re "31") (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))))) (re.++ (re.union (str.to_re "29") (str.to_re "30")) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))))) (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (str.to_re "&000") (re.comp (str.to_re "0")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "29") (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (str.to_re "02") (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-")) (re.union (re.++ (re.range "0" "9") (re.range "0" "9") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00"))))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2edcr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dcr/i\u{a}"))))
(check-sat)
