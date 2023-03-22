(declare-const X String)
; [\x80-\xFF]
(assert (not (str.in_re X (re.++ (re.range "\u{80}" "\u{ff}") (str.to_re "\u{a}")))))
(check-sat)
