(declare-const X String)
; ^([0-9]{4})-([0-1][0-9])-([0-3][0-9])\s([0-1][0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "--") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re "::\u{a}") (re.range "0" "1") (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)

(exit)
