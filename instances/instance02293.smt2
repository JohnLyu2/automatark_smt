(declare-const X String)
; /\x2F[a-z]+\x2epng/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re ".png/Ui\u{a}")))))
(check-sat)

(exit)
