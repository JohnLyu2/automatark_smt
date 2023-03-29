(declare-const X String)
; (^\+?1[0-7]\d(\.\d+)?$)|(^\+?([1-9])?\d(\.\d+)?$)|(^-180$)|(^-1[1-7]\d(\.\d+)?$)|(^-[1-9]\d(\.\d+)?$)|(^\-\d(\.\d+)?$)
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "+")) (str.to_re "1") (re.range "0" "7") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "+")) (re.opt (re.range "1" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (str.to_re "-180") (re.++ (str.to_re "-1") (re.range "1" "7") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "-") (re.range "1" "9") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "\u{a}-") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))))))
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (str.in_re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_")))) (re.++ (str.to_re "\u{a}_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_")))))))
(check-sat)

(exit)
