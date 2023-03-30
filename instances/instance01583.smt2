(declare-const X String)
; /^POST\x20\x2f[A-F\d]{42}\x20HTTP/
(assert (str.in_re X (re.++ (str.to_re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re " HTTP/\u{a}"))))
(check-sat)

(exit)
