(declare-const X String)
; ^[a-z0-9_]{1}[a-z0-9\-_]*(\.[a-z0-9\-_]+)*@[a-z0-9]{1}[a-z0-9\-_]*(\.[a-z0-9\-_]+)*\.[a-z]{2,4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))))) (str.to_re "@") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_"))))) (str.to_re ".") ((_ re.loop 2 4) (re.range "a" "z")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
