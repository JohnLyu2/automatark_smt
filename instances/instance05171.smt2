(declare-const X String)
; /\x28compatible\x3b[A-Z]*\x3b\x29\x0d\x0a/H
(assert (not (str.in_re X (re.++ (str.to_re "/(compatible;") (re.* (re.range "A" "Z")) (str.to_re ";)\u{d}\u{a}/H\u{a}")))))
(check-sat)

(exit)
