(declare-const X String)
; ^(0{0,1}[1-9][0-9]){1}(\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}([0-9]{3}|[0-9]{4})(\-){0,1}(\s){0,1}[0-9]{4}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)

(exit)
