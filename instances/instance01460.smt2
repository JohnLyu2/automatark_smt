(declare-const X String)
; /^\x2f[0-9a-z]{30}$/Umi
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/Umi\u{a}"))))
(check-sat)

(exit)
