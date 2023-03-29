(declare-const X String)
; /\x2emim([\?\x5c\x2f]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.mim") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ^[^\\\/\?\*\"\'\>\<\:\|]*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re "?") (str.to_re "*") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re "<") (str.to_re ":") (str.to_re "|"))) (str.to_re "\u{a}"))))
(check-sat)

(exit)
