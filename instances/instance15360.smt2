(declare-const X String)
; var phonePattern = /^(([^\.\-\,a-wy-z]([\(]?(\+|[x])?\d+[\)]?)?[\s\.\-\,]?([\(]?\d+[\)]?)?[\s\.\-\,]?(\d+[\s\.\-\,]?)+[^\.\-\,a-z])|((\+|[x])?\d+))$/i
(assert (not (str.in_re X (re.++ (str.to_re "var phonePattern = /") (re.union (re.++ (re.union (str.to_re ".") (str.to_re "-") (str.to_re ",") (re.range "a" "w") (re.range "y" "z")) (re.opt (re.++ (re.opt (str.to_re "(")) (re.opt (re.union (str.to_re "+") (str.to_re "x"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (re.++ (re.opt (str.to_re "(")) (re.+ (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.++ (re.+ (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.union (str.to_re ".") (str.to_re "-") (str.to_re ",") (re.range "a" "z"))) (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "x"))) (re.+ (re.range "0" "9")))) (str.to_re "/i\u{a}")))))
; /\x2em4v([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.m4v") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)

(exit)
