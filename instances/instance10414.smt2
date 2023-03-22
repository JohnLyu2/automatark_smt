(declare-const X String)
; (\d+)?-?(\d+)-(\d+)
(assert (str.in_re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; /^\/hello\/[0-9]\.[0-9]\/[0-9]{3}\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/iU
(assert (not (str.in_re X (re.++ (str.to_re "//hello/") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/iU\u{a}")))))
; ^(((0)[13578]|(10)|(12))(/)((0[1-9])|([12][0-9])|((3)[01]))(/)(\d{4}))|(((0)[469]|(11))(/)((0[1-9])|([12][0-9])|(30))(/)(\d{4}))|((02)(/)((0[1-9])|((1)[0-9])|((2)[0-8]))(/)(\d{4}))|((02)(/)((0[1-9])|((1)[0-9])|((2)[0-9]))(/)((\d{2})(([02468][048])|([13579][26]))))$
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "02/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}02/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))))))))
(check-sat)
