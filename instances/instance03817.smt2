(declare-const X String)
; ^\d+([^.,])?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re ","))) (str.to_re "\u{a}")))))
(check-sat)
