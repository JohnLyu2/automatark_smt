(declare-const X String)
; ^[a-zA-Z]+((((\-)|(\s))[a-zA-Z]+)?(,(\s)?(((j|J)|(s|S))(r|R)(\.)?|II|III|IV))?)?$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (re.opt (re.++ (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.++ (str.to_re ",") (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J") (str.to_re "s") (str.to_re "S")) (re.union (str.to_re "r") (str.to_re "R")) (re.opt (str.to_re "."))) (str.to_re "II") (str.to_re "III") (str.to_re "IV")))))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
