(declare-const X String)
; /\x2ereg([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.reg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^[A-Za-z]{3,4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (not (str.in_re X (re.++ ((_ re.loop 3 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to_re " ") (str.to_re "|") (str.to_re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "|") (str.to_re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
(check-sat)
