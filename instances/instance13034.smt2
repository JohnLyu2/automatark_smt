(declare-const X String)
; ^((0|(\(0\)))?|(00|(\(00\)))?(\s?|-?)(27|\(27\))|((\+27))|(\(\+27\))|\(00(\s?|-?)27\))( |-)?(\(?0?\)?)( |-)?\(?(1[0-9]|2[1-4,7-9]|3[1-6,9]|4[0-9]|5[1,3,6-9]|7[1-4,6,8,9]|8[0-9])\)?(\s?|-?)((\d{3}(\s?|-?)\d{4}$)|((\d{4})(\s?|-?)(\d{3})$)|([0-2](\s?|-?)(\d{3}(\s?|-?)\d{3}$)))
(assert (not (str.in_re X (re.++ (re.union (re.opt (re.union (str.to_re "0") (str.to_re "(0)"))) (re.++ (re.opt (re.union (str.to_re "00") (str.to_re "(00)"))) (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) (re.union (str.to_re "27") (str.to_re "(27)"))) (str.to_re "+27") (str.to_re "(+27)") (re.++ (str.to_re "(00") (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) (str.to_re "27)"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.opt (str.to_re "(")) (re.union (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.union (re.range "1" "4") (str.to_re ",") (re.range "7" "9"))) (re.++ (str.to_re "3") (re.union (re.range "1" "6") (str.to_re ",") (str.to_re "9"))) (re.++ (str.to_re "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.union (str.to_re "1") (str.to_re ",") (str.to_re "3") (re.range "6" "9"))) (re.++ (str.to_re "7") (re.union (re.range "1" "4") (str.to_re ",") (str.to_re "6") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "8") (re.range "0" "9"))) (re.opt (str.to_re ")")) (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "0" "2") (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}") (re.opt (str.to_re "(")) (re.opt (str.to_re "0")) (re.opt (str.to_re ")"))))))
; SpyBuddyZOMBIES\x5fHTTP\x5fGETearch\x2Eearthlink
(assert (not (str.in_re X (str.to_re "SpyBuddyZOMBIES_HTTP_GETearch.earthlink\u{a}"))))
(check-sat)

(exit)
