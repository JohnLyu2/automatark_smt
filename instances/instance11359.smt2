(declare-const X String)
; ^[0][1-9]{2}(-)[0-9]{8}$  and  ^[0][1-9]{3}(-)[0-9]{7}$  and  ^[0][1-9]{4}(-)[0-9]{6}$
(assert (str.in_re X (re.++ (str.to_re "0") ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "  and  0") ((_ re.loop 3 3) (re.range "1" "9")) (str.to_re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "  and  0") ((_ re.loop 4 4) (re.range "1" "9")) (str.to_re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; (^(352)[8-9](\d{11}$|\d{12}$))|(^(35)[3-8](\d{12}$|\d{13}$))
(assert (str.in_re X (re.union (re.++ (str.to_re "352") (re.range "8" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (str.to_re "\u{a}35") (re.range "3" "8") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 13 13) (re.range "0" "9")))))))
; \d{5}\-\d{3}
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /filename=[\x22\x27]?[^\n]*\x2epif[\x22\x27\s]/si
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pif") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/si\u{a}")))))
; ^((((([13578])|(1[0-2]))[\-\/\s]?(([1-9])|([1-2][0-9])|(3[01])))|((([469])|(11))[\-\/\s]?(([1-9])|([1-2][0-9])|(30)))|(2[\-\/\s]?(([1-9])|([1-2][0-9]))))[\-\/\s]?\d{4})(\s((([1-9])|(1[02]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re ":") (re.union (re.++ (str.to_re ":") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.range "0" "5") (re.range "0" "9")) (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "M") (str.to_re "|") (str.to_re "P") (str.to_re "a") (str.to_re "m") (str.to_re "p"))) (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{a}") (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "2")) (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")) (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.range "1" "9") (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (str.to_re "11") (str.to_re "4") (str.to_re "6") (str.to_re "9")) (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.range "1" "9") (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30"))) (re.++ (str.to_re "2") (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.range "1" "9") (re.++ (re.range "1" "2") (re.range "0" "9"))))) (re.opt (re.union (str.to_re "-") (str.to_re "/") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
