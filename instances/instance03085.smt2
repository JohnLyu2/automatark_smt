(declare-const X String)
; (NOT)?(\s*\(*)\s*(\w+)\s*(=|<>|<|>|LIKE|IN)\s*(\(([^\)]*)\)|'([^']*)'|(-?\d*\.?\d+))(\s*\)*\s*)(AND|OR)?
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "NOT")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (str.to_re "=") (str.to_re "<>") (str.to_re "<") (str.to_re ">") (str.to_re "LIKE") (str.to_re "IN")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (str.to_re "(") (re.* (re.comp (str.to_re ")"))) (str.to_re ")")) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'")) (re.++ (re.opt (str.to_re "-")) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.union (str.to_re "AND") (str.to_re "OR"))) (str.to_re "\u{a}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re "(")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (str.to_re ")")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))))))
(check-sat)
