(declare-const X String)
; ^((([\(]?[2-9]{1}[0-9]{2}[\)]?)|([2-9]{1}[0-9]{2}\.?)){1}[ ]?[2-9]{1}[0-9]{2}[\-\.]{1}[0-9]{4})([ ]?[xX]{1}[ ]?[0-9]{3,4})?$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re " ")) ((_ re.loop 1 1) (re.union (str.to_re "x") (str.to_re "X"))) (re.opt (str.to_re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to_re "\u{a}") ((_ re.loop 1 1) (re.union (re.++ (re.opt (str.to_re "(")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re ")"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re "."))))) (re.opt (str.to_re " ")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re "."))) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)

(exit)
