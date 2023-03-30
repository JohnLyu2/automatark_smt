(declare-const X String)
; /\x2fib2\x2f$/U
(assert (str.in_re X (str.to_re "//ib2//U\u{a}")))
; ^(((\d{4}((0[13578]|1[02])(0[1-9]|[12]\d|3[01])|(0[13456789]|1[012])(0[1-9]|[12]\d|30)|02(0[1-9]|1\d|2[0-8])))|((\d{2}[02468][048]|\d{2}[13579][26]))0229)){0,8}$
(assert (not (str.in_re X (re.++ ((_ re.loop 0 8) (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))))) (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "0229")))) (str.to_re "\u{a}")))))
; AID\x2FHost\x3aHourskl\x2Esearch\x2Eneed2find\x2EcomHost\x3aHost\x3A
(assert (not (str.in_re X (str.to_re "AID/Host:Hourskl.search.need2find.comHost:Host:\u{a}"))))
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)

(exit)
