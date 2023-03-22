(declare-const X String)
; /gate\x2ephp\x3fid=[a-z]{15}/U
(assert (str.in_re X (re.++ (str.to_re "/gate.php?id=") ((_ re.loop 15 15) (re.range "a" "z")) (str.to_re "/U\u{a}"))))
(check-sat)
