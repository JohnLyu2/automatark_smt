(declare-const X String)
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (not (str.in_re X (re.++ (str.to_re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to_re "/U\u{a}")))))
(check-sat)

(exit)
