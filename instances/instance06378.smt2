(declare-const X String)
; ^((\d?)|(([-+]?\d+\.?\d*)|([-+]?\d*\.?\d+))|(([-+]?\d+\.?\d*\,\ ?)*([-+]?\d+\.?\d*))|(([-+]?\d*\.?\d+\,\ ?)*([-+]?\d*\.?\d+))|(([-+]?\d+\.?\d*\,\ ?)*([-+]?\d*\.?\d+))|(([-+]?\d*\.?\d+\,\ ?)*([-+]?\d+\.?\d*)))$
(assert (not (str.in_re X (re.++ (re.union (re.opt (re.range "0" "9")) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; zmnjgmomgbdz\x2fzzmw\.gzt\d+Ready
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.range "0" "9")) (str.to_re "Ready\u{a}"))))
(check-sat)

(exit)
