(declare-const X String)
; ^(\+(1 ?(2(4[2,6]|6[4,8]|84)|34(0|5)|4(41|73)|6(49|64|7[0,1]|84)|7(58|67|8[4,7])|8(09|29|6[8,9]|76)|939)?|2(0|1[1-4,6,8]|2[0-9]|3[0-9]|4[0-9]|5[0-8]|6[0-9]|7|9[0,1,7-9])|3([0-4]|5[0-9]|6|7[0-9]|8[0-7,9]|9)|4(0|1|2[0,1,3]|[3-9])|5(0[0-9]|[1-8]|9[0-9])|6([0-6]|7[0,2-9]|8[0-3,5-9]|9[0-2])|7|8([1,2,4]|5[0,2,3,5,6]|6|8[0,6])|9([0-5]|6[0-8]|7[0-7]|8|9([2-6]|8))))
(assert (str.in_re X (re.++ (str.to_re "\u{a}+") (re.union (re.++ (str.to_re "1") (re.opt (str.to_re " ")) (re.opt (re.union (re.++ (str.to_re "2") (re.union (re.++ (str.to_re "4") (re.union (str.to_re "2") (str.to_re ",") (str.to_re "6"))) (re.++ (str.to_re "6") (re.union (str.to_re "4") (str.to_re ",") (str.to_re "8"))) (str.to_re "84"))) (re.++ (str.to_re "34") (re.union (str.to_re "0") (str.to_re "5"))) (re.++ (str.to_re "4") (re.union (str.to_re "41") (str.to_re "73"))) (re.++ (str.to_re "6") (re.union (str.to_re "49") (str.to_re "64") (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "1"))) (str.to_re "84"))) (re.++ (str.to_re "7") (re.union (str.to_re "58") (str.to_re "67") (re.++ (str.to_re "8") (re.union (str.to_re "4") (str.to_re ",") (str.to_re "7"))))) (re.++ (str.to_re "8") (re.union (str.to_re "09") (str.to_re "29") (re.++ (str.to_re "6") (re.union (str.to_re "8") (str.to_re ",") (str.to_re "9"))) (str.to_re "76"))) (str.to_re "939")))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (re.++ (str.to_re "1") (re.union (re.range "1" "4") (str.to_re ",") (str.to_re "6") (str.to_re "8"))) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "9")) (re.++ (str.to_re "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "8")) (re.++ (str.to_re "6") (re.range "0" "9")) (str.to_re "7") (re.++ (str.to_re "9") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "1") (re.range "7" "9"))))) (re.++ (str.to_re "3") (re.union (re.range "0" "4") (re.++ (str.to_re "5") (re.range "0" "9")) (str.to_re "6") (re.++ (str.to_re "7") (re.range "0" "9")) (re.++ (str.to_re "8") (re.union (re.range "0" "7") (str.to_re ",") (str.to_re "9"))) (str.to_re "9"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "1") (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "1") (str.to_re "3"))) (re.range "3" "9"))) (re.++ (str.to_re "5") (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.range "1" "8") (re.++ (str.to_re "9") (re.range "0" "9")))) (re.++ (str.to_re "6") (re.union (re.range "0" "6") (re.++ (str.to_re "7") (re.union (str.to_re "0") (str.to_re ",") (re.range "2" "9"))) (re.++ (str.to_re "8") (re.union (re.range "0" "3") (str.to_re ",") (re.range "5" "9"))) (re.++ (str.to_re "9") (re.range "0" "2")))) (str.to_re "7") (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "2") (str.to_re "3") (str.to_re "5") (str.to_re "6"))) (str.to_re "6") (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "6"))) (str.to_re "1") (str.to_re ",") (str.to_re "2") (str.to_re "4"))) (re.++ (str.to_re "9") (re.union (re.range "0" "5") (re.++ (str.to_re "6") (re.range "0" "8")) (re.++ (str.to_re "7") (re.range "0" "7")) (str.to_re "8") (re.++ (str.to_re "9") (re.union (re.range "2" "6") (str.to_re "8")))))))))
(check-sat)
