(declare-const X String)
; /\x2Ecall\x2Ecall\s*\x28[^\x29\x2C]*?\x2C\s*\x28?(0x|\d)/i
(assert (str.in_re X (re.++ (str.to_re "/.call.call") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "(") (re.* (re.union (str.to_re ")") (str.to_re ","))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "(")) (re.union (str.to_re "0x") (re.range "0" "9")) (str.to_re "/i\u{a}"))))
(check-sat)
