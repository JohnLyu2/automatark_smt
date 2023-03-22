(declare-const X String)
; /\x2fkills\x2etxt\x3f(t\d|p)\x3d\d{6}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//kills.txt?") (re.union (re.++ (str.to_re "t") (re.range "0" "9")) (str.to_re "p")) (str.to_re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
