(declare-const X String)
; ^-?((\d*\.\d+)|(\d+\.\d*)|(\d+\.\d+))$
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
