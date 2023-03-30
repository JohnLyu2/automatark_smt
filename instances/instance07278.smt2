(declare-const X String)
; [\x80-\xFF]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
; ^[A-Z][a-z]+((e(m|ng)|str)a)$
(assert (str.in_re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}") (re.union (re.++ (str.to_re "e") (re.union (str.to_re "m") (str.to_re "ng"))) (str.to_re "str")) (str.to_re "a"))))
(check-sat)

(exit)
