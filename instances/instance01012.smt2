(declare-const X String)
; ^\$\d{1,3}(,?\d{3})*(\.\d{2})?$
(assert (not (str.in_re X (re.++ (str.to_re "$") ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to_re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
