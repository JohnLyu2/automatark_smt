(declare-const X String)
; (([01][\.\- +]\(\d{3}\)[\.\- +]?)|([01][\.\- +]\d{3}[\.\- +])|(\(\d{3}\) ?)|(\d{3}[- \.]))?\d{3}[- \.]\d{4}
(assert (str.in_re X (re.++ (re.opt (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.union (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "+")) (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "+")))) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.union (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "+")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re ".") (str.to_re "-") (str.to_re " ") (str.to_re "+"))) (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (str.to_re " "))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "."))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ") (str.to_re ".")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)

(exit)
