(declare-const X String)
; ^\$?([1-9][0-9]{3,}(\.\d{2})?|(\d{1,3}\,\d{3}|\d{1,3}\,\d{3}(\.\d{2})?)|(\d{1,3}\,\d{3}|\d{1,3}\,\d{3}\,\d{3}(\.\d{2})?)*)?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.opt (re.union (re.++ (re.range "1" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.* (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (str.to_re "\u{a}"))))
; ^[A-Za-z]{3,4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (str.in_re X (re.++ ((_ re.loop 3 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to_re " ") (str.to_re "|") (str.to_re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "|") (str.to_re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
; (0?[1-9]|[12][0-9]|3[01])[.](0?[1-9]|1[012])[.]\d{4}
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re ".") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
