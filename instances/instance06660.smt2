(declare-const X String)
; ^((19[0-9][0-9])|(20[0-1][0-5]))\-((0?[1-9])|(1[0-2]))\-((0?[1-9])|([1-2][0-9])|(3[0-1]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "20") (re.range "0" "1") (re.range "0" "5"))) (str.to_re "-") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "-") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dvr-ms/i\u{a}")))))
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in_re X (str.to_re "TSA/S:Users\u{5c}http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
(check-sat)
