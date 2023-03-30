(declare-const X String)
; ^[^\x00-\x1f\x21-\x26\x28-\x2d\x2f-\x40\x5b-\x60\x7b-\xff]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "\u{0}" "\u{1f}") (re.range "!" "&") (re.range "(" "-") (re.range "/" "@") (re.range "[" "`") (re.range "{" "\u{ff}"))) (str.to_re "\u{a}")))))
(check-sat)

(exit)
