(declare-const X String)
; ^[-+]?[0-9]+[.]?[0-9]*([eE][-+]?[0-9]+)?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
