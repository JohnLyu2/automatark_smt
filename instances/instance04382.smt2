(declare-const X String)
; ^([\#]{0,1}([a-fA-F0-9]{6}|[a-fA-F0-9]{3})|rgb\(([0-9]{1},|[1-9]{1}[0-9]{1},|[1]{1}[0-9]{2},|[2]{1}[0-4]{1}[0-9]{1},|25[0-5]{1},){2}([0-9]{1}|[1-9]{1}[0-9]{1}|[1]{1}[0-9]{2}|[2]{1}[0-4]{1}[0-9]{1}|25[0-5]{1}){1}\)|rgb\(([0-9]{1}%,|[1-9]{1}[0-9]{1}%,|100%,){2}([0-9]{1}%|[1-9]{1}[0-9]{1}%|100%){1}\))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "#")) (re.union ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))))) (re.++ (str.to_re "rgb(") ((_ re.loop 2 2) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ ((_ re.loop 1 1) (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",")) (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re ",")) (re.++ (str.to_re "25") ((_ re.loop 1 1) (re.range "0" "5")) (str.to_re ",")))) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "2")) ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "25") ((_ re.loop 1 1) (re.range "0" "5"))))) (str.to_re ")")) (re.++ (str.to_re "rgb(") ((_ re.loop 2 2) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%,")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%,")) (str.to_re "100%,"))) ((_ re.loop 1 1) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "%")) (str.to_re "100%"))) (str.to_re ")"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
