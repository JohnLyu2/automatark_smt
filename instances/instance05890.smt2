(declare-const X String)
; /\x2fb\x2fpkg\x2fT202[0-9a-z]{10}/U
(assert (str.in_re X (re.++ (str.to_re "//b/pkg/T202") ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/U\u{a}"))))
(check-sat)
