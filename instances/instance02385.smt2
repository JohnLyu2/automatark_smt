(declare-const X String)
; [A-Za-z]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
