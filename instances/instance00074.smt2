(declare-const X String)
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (str.in_re X (re.++ (str.to_re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
(check-sat)

(exit)
