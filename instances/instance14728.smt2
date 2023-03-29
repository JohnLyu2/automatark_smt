(declare-const X String)
; /ID3\x03\x00.{5}([TW][A-Z]{3}|COMM)/smi
(assert (not (str.in_re X (re.++ (str.to_re "/ID3\u{3}\u{0}") ((_ re.loop 5 5) re.allchar) (re.union (re.++ (re.union (str.to_re "T") (str.to_re "W")) ((_ re.loop 3 3) (re.range "A" "Z"))) (str.to_re "COMM")) (str.to_re "/smi\u{a}")))))
; ^(((2|8|9)\d{2})|((02|08|09)\d{2})|([1-9]\d{3}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "0") (re.union (str.to_re "2") (str.to_re "8") (str.to_re "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; ^\s*-?(\d{0,7}|10[0-5]\d{0,5}|106[0-6]\d{0,4}|1067[0-4]\d{0,3}|10675[0-1]\d{0,2}|((\d{0,7}|10[0-5]\d{0,5}|106[0-6]\d{0,4}|1067[0-4]\d{0,3}|10675[0-1]\d{0,2})\.)?([0-1]?[0-9]|2[0-3]):[0-5]?[0-9](:[0-5]?[0-9](\.\d{1,7})?)?)\s*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.union ((_ re.loop 0 7) (re.range "0" "9")) (re.++ (str.to_re "10") (re.range "0" "5") ((_ re.loop 0 5) (re.range "0" "9"))) (re.++ (str.to_re "106") (re.range "0" "6") ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (str.to_re "1067") (re.range "0" "4") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (str.to_re "10675") (re.range "0" "1") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (re.++ (re.union ((_ re.loop 0 7) (re.range "0" "9")) (re.++ (str.to_re "10") (re.range "0" "5") ((_ re.loop 0 5) (re.range "0" "9"))) (re.++ (str.to_re "106") (re.range "0" "6") ((_ re.loop 0 4) (re.range "0" "9"))) (re.++ (str.to_re "1067") (re.range "0" "4") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (str.to_re "10675") (re.range "0" "1") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "."))) (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.++ (str.to_re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 7) (re.range "0" "9")))))))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
