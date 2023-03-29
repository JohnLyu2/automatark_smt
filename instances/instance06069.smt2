(declare-const X String)
; ^(([+]31|0031)\s\(0\)([0-9]{9})|([+]31|0031)\s0([0-9]{9})|0([0-9]{9}))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "+31") (str.to_re "0031")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "(0)") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to_re "+31") (str.to_re "0031")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "0") ((_ re.loop 9 9) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; /RegExp?\x23.{0,5}\x28\x3f[^\x29]{0,4}i.*?\x28\x3f\x2d[^\x29]{0,4}i.{0,50}\x7c\x7c/smi
(assert (not (str.in_re X (re.++ (str.to_re "/RegEx") (re.opt (str.to_re "p")) (str.to_re "#") ((_ re.loop 0 5) re.allchar) (str.to_re "(?") ((_ re.loop 0 4) (re.comp (str.to_re ")"))) (str.to_re "i") (re.* re.allchar) (str.to_re "(?-") ((_ re.loop 0 4) (re.comp (str.to_re ")"))) (str.to_re "i") ((_ re.loop 0 50) re.allchar) (str.to_re "||/smi\u{a}")))))
(check-sat)

(exit)
