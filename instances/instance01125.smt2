(declare-const X String)
; ^(((((((00|\+)49[ \-/]?)|0)[1-9][0-9]{1,4})[ \-/]?)|((((00|\+)49\()|\(0)[1-9][0-9]{1,4}\)[ \-/]?))[0-9]{1,7}([ \-/]?[0-9]{1,5})?)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) (re.union (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/")))) (str.to_re "0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "49(")) (str.to_re "(0")) (re.range "1" "9") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))))) ((_ re.loop 1 7) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "/"))) ((_ re.loop 1 5) (re.range "0" "9")))))))
(check-sat)

(exit)
