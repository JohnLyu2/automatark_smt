(declare-const X String)
; ((&#[0-9]+|&[a-zA-Z]+[0-9]*?);)
(assert (str.in_re X (re.++ (str.to_re "\u{a};&") (re.union (re.++ (str.to_re "#") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")))))))
; (^(5[0678])\d{11,18}$)
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 11 18) (re.range "0" "9")) (str.to_re "5") (re.union (str.to_re "0") (str.to_re "6") (str.to_re "7") (str.to_re "8")))))
(check-sat)

(exit)
