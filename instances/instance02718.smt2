(declare-const X String)
; (^(4|5)\d{3}-?\d{4}-?\d{4}-?\d{4}|(4|5)\d{15})|(^(6011)-?\d{4}-?\d{4}-?\d{4}|(6011)-?\d{12})|(^((3\d{3}))-\d{6}-\d{5}|^((3\d{14})))
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "3") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "3") ((_ re.loop 14 14) (re.range "0" "9")))) (str.to_re "\u{a}")) (re.++ (re.union (str.to_re "4") (str.to_re "5")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "4") (str.to_re "5")) ((_ re.loop 15 15) (re.range "0" "9"))) (re.++ (str.to_re "6011") (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "6011") (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.range "0" "9"))))))
(check-sat)

(exit)
