(declare-const X String)
; /\x2ephp\x3f[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (str.in_re X (re.++ (str.to_re "/.php?") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "&") (re.+ (re.range "a" "z")) (str.to_re "=") (re.+ (re.range "0" "9")) (str.to_re "/iU\u{a}"))))
(check-sat)

(exit)
