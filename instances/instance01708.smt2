(declare-const X String)
; /\x2fb\x2fshoe\x2f[0-9]{3,5}$/U
(assert (str.in_re X (re.++ (str.to_re "//b/shoe/") ((_ re.loop 3 5) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)
