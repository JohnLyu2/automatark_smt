(declare-const X String)
; ((8|\+7)-?)?\(?\d{3,5}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}((-?\d{1})?-?\d{1})?
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "8") (str.to_re "+7")) (re.opt (str.to_re "-")))) (re.opt (str.to_re "(")) ((_ re.loop 3 5) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
