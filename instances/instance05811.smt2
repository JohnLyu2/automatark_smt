(declare-const X String)
; /^[0-9a-fA-F]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "/\u{a}")))))
(check-sat)
