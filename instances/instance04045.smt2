(declare-const X String)
; /^\x2f[a-z\x2d\x5f]{90,97}\.php$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 90 97) (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "_"))) (str.to_re ".php/U\u{a}")))))
(check-sat)
