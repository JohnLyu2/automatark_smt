(declare-const X String)
; (\+1 )?\d{3} \d{3} \d{4}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
