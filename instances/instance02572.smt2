(declare-const X String)
; (^\*\.[a-zA-Z][a-zA-Z][a-zA-Z]$)|(^\*\.\*$)
(assert (str.in_re X (re.union (re.++ (str.to_re "*.") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "*.*\u{a}"))))
(check-sat)
